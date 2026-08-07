/********************************************************************
Problem Statement:
1. Declare and initialize a dynamic array with:
      {10, 20, 30, 20, 50, 20, 70}
2. Find all elements equal to 20.
3. Find the first occurrence index of 20.
4. Find the last occurrence index of 20.
5. Display the results.

Concepts Covered:
- Dynamic Array
- Array Locator Methods
- find()
- find_first_index()
- find_last_index()
********************************************************************/

module tb;

int data[] = '{10,20,30,20,50,20,70};
int idx_q[$];
int value;

initial
begin

    // Display original array
    foreach (data[i])
        $display("%0d", data[i]);

    // Find all elements equal to 20
    idx_q = data.find() with (item == 20);

    $display("\nElements equal to 20:");

    foreach (idx_q[i])
        $display("idx_q[%0d] = %0d", i, idx_q[i]);

    // Find first occurrence index
    idx_q = data.find_first_index() with (item == 20);
    $display("\nFirst occurrence index of 20 = %0d", idx_q[0]);

    // Find last occurrence index
    idx_q = data.find_last_index() with (item == 20);
    $display("Last occurrence index of 20 = %0d", idx_q[0]);

end

endmodule


/*---------------------- Expected Output ----------------------

10
20
30
20
50
20
70

Elements equal to 20:

idx_q[0] = 20
idx_q[1] = 20
idx_q[2] = 20

First occurrence index of 20 = 1
Last occurrence index of 20 = 5

--------------------------------------------------------------*/
