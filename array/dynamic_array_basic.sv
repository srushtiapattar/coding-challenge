/********************************************************************
Title: Dynamic Array

Problem Statement:
1. Declare a dynamic array of integers.
2. Allocate memory for 5 elements using new[].
3. Initialize the array with values 5, 4, 3, 2, 1.
4. Display all array elements using a for loop.

Concepts Covered:
- Dynamic Array
- Memory Allocation (new[])
- Array Initialization
- for Loop
- $size
********************************************************************/

module tb;

    int data[] = new[5];

    initial begin
        data = '{5,4,3,2,1};

        for (int i = 0; i < $size(data); i++) begin
            $display("data[%0d] = %0d", i, data[i]);
        end
    end

endmodule

/*---------------------- Expected Output ----------------------

data[0] = 5
data[1] = 4
data[2] = 3
data[3] = 2
data[4] = 1

-------------------------------------------------------------*/
