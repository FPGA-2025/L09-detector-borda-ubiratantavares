module detector_borda (
    input clk,
    input rst,
    input [1:0] entrada,
    output reg [1:0] detector
);
    
    reg [1:0] entrada_anterior;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            detector = 2'b00;
            entrada_anterior = 2'b00;
        end else begin
            detector = (~entrada_anterior) & entrada;
            entrada_anterior = entrada;
        end
    end

endmodule