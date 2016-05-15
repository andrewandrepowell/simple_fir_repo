
`timescale 1 ns / 1 ps

module write_to_leds_v1_0 #(

    // Parameters of Axi Slave Bus Interface fir_samples
    parameter integer C_fir_samples_TDATA_WIDTH	= 32,
    
    // Other parameters
    parameter integer LEDS_WIDTH=16,
    parameter integer DIVIDER_FACTOR=10,
    parameter integer INPUT_SAMPLE_WIDTH=27
) (
    // Ports of Axi Slave Bus Interface fir_samples
    input wire  fir_samples_aclk,
    input wire  fir_samples_aresetn,
    output reg  fir_samples_tready,
    input wire [C_fir_samples_TDATA_WIDTH-1 : 0] fir_samples_tdata,
    input wire  fir_samples_tvalid,
    
    // Other ports
    output reg [LEDS_WIDTH-1:0] leds);

localparam integer WORD_WIDTH = C_fir_samples_TDATA_WIDTH;
localparam integer TRUE_SAMPLE_WIDTH = INPUT_SAMPLE_WIDTH-DIVIDER_FACTOR;
reg [WORD_WIDTH-1:0] sample;
reg [TRUE_SAMPLE_WIDTH-1:0] thresholds [0:LEDS_WIDTH-1];
wire [TRUE_SAMPLE_WIDTH-1:0] true_sample;
assign true_sample = sample[TRUE_SAMPLE_WIDTH+DIVIDER_FACTOR-1:DIVIDER_FACTOR];

// Generate the thresholds.
initial begin: THRESHOLD_BLOCK
    integer each_led;
    integer threshold_minimum;
    threshold_minimum = 2**(TRUE_SAMPLE_WIDTH)/LEDS_WIDTH;
    for (each_led=0;each_led<LEDS_WIDTH;each_led=each_led+1) begin
        thresholds[each_led] = threshold_minimum*each_led;
    end
end

// Sample and change state of LEDs.
always @(posedge fir_samples_aclk)
    if (!fir_samples_aresetn) begin
        fir_samples_tready <= 0;
        sample <= 0;
        leds <= 0;
    end else begin: SET_LEDS
        integer each_led;
        fir_samples_tready <= 1;
        if (fir_samples_tvalid && fir_samples_tready) begin
            sample <= fir_samples_tdata;
        end
        for (each_led=0;each_led<LEDS_WIDTH;each_led=each_led+1) begin
            if (thresholds[each_led]<true_sample) begin
                leds[each_led] <= 1;
            end else begin
                leds[each_led] <= 0;
            end
        end
    end

endmodule
