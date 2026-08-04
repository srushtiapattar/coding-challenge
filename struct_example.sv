module test;

  // Anonymous structure representing a pixel
  struct {
    bit [7:0] r, g, b;
    int color;
  } pixel;

  initial
	begin
	pixel.r     = 8'd25;
    	pixel.g     = 8'd55;
    	pixel.b     = 8'd11;
    	pixel.color = 32'd811;

   	$display("r=%d, g=%d, b=%d, color=%d", pixel.r, pixel.g, pixel.b, pixel.color);
  	end

endmodule

