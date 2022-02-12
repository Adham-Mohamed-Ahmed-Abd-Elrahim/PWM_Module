module PWM
(input clk,//100Mhz
input reset,
input en,
input [1:0] duty_cycle,
output reg PWM_OUT //10Mhz
);
reg [3:0] counter;
reg sat;
//finite state machine
localparam [1:0] idle_state=2'b00;
localparam [1:0] high=2'b01;
localparam [1:0] low=2'b10;
reg [1:0] current_state;
reg [1:0] next_state;

always @ (posedge clk ,negedge reset)
begin 
if(reset==1'b0)
current_state<=idle_state;
else 
current_state<=next_state;
end

always @ (current_state,counter,sat,en,duty_cycle)
begin
case(current_state)
//idle state and ready to transmit
idle_state:begin
PWM_OUT<=0;
next_state<=(en==1) ? high:idle_state; //TX_DV for one cycle
end

high:begin
PWM_OUT<=1'b1;
next_state<=counter<duty_cycle? high:low; //TX_DV for one cycle
end
low:begin
PWM_OUT<=1'b0;
next_state<=(sat==1) ? high:low ;
end
default:begin
next_state<=idle_state;
end
endcase
end


//generating counter
always @ (posedge clk,negedge en)begin
if(en==0)
counter<=1'b0;
else if (sat==1'b0)
counter<=counter+1;
else if (sat==1'b1)
counter<=1'b0;


end
always@(counter)begin
    if(counter==9)
    sat=1;
    else
    sat=0;
end 
/*always@(posedge clk)
if(counter<=duty_cycle)begin
counter<=counter+1;
PWM_OUT<=1;
end
else
counter<=0;
*****************************
always @ (posedge clk,posedge en)begin
if(en==1)begin
if(counter==9)begin
counter<=0; 
sat<=1;
end
else begin
sat<=0;
counter<=counter+1;//Future work [Fix this for STA tool]
end
end
else begin 
counter<=0;
sat<=0;
end
end
always@(counter)begin
    if(counter==9)
    sat=1;
    else
    sat=0;
end 
*/

endmodule