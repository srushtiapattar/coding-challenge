/********************************************************************
Problem Statement:
1. Declare an associative array with integer index.
2. Store values at indices 2, 5, 8, and 10.
3. Display all elements.
4. Display the number of elements.
5. Display the first and last index.
6. Delete the element at index 5.
7. Display the updated array.

Concepts Covered:
- Associative Array
- Integer Index
- foreach Loop
- num(), first(), last(), delete()
********************************************************************/

module tb;

int data[int];
int idx;

initial 
begin

    // Insert values
    data[2]  = 20;
    data[5]  = 30;
    data[8]  = 40;
    data[10] = 50;

    // Display all elements
    foreach(data[i])
        $display("index[%0d] = %0d", i, data[i]);

    // Display number of elements
    $display("Number of elements = %0d", data.num());

    // Display first index
    data.first(idx);
    $display("First index = %0d", idx);

    // Display last index
    data.last(idx);
    $display("Last index = %0d", idx);

    // Delete element at index 5
    data.delete(5);

    $display("\nAfter deleting:");

    // Display updated array
    foreach(data[i])
        $display("index[%0d] = %0d", i, data[i]);

end

endmodule


/*---------------------- Expected Output ----------------------

index[2] = 20
index[5] = 30
index[8] = 40
index[10] = 50

Number of elements = 4
First index = 2
Last index = 10

After deleting:

index[2] = 20
index[8] = 40
index[10] = 50

--------------------------------------------------------------*/
