/********************************************************************
Problem Statement:
1. Declare and initialize a dynamic array with:
      {25, 10, 40, 5, 30, 15}
2. Display the original array.
3. Sort the array in ascending order.
4. Sort the array in descending order.
5. Reverse the array.
6. Shuffle the array.
7. Display the array after each operation.

Concepts Covered:
- Dynamic Array
- Array Ordering Methods
- sort()
- rsort()
- reverse()
- shuffle()
********************************************************************/

module tb();

int data[] = '{25,10,40,5,30,15};

initial
begin

    // Display original array
    foreach(data[i])
        $display("data[%0d] = %0d", i, data[i]);

    // Sort in ascending order
    data.sort();
    $display("\nAscending Order:");
    foreach(data[i])
        $display("data[%0d] = %0d", i, data[i]);

    // Sort in descending order
    data.rsort();
    $display("\nDescending Order:");
    foreach(data[i])
        $display("data[%0d] = %0d", i, data[i]);

    // Reverse the array
    data.reverse();
    $display("\nReverse Order:");
    foreach(data[i])
        $display("data[%0d] = %0d", i, data[i]);

    // Shuffle the array
    data.shuffle();
    $display("\nShuffled Array:");
    foreach(data[i])
        $display("data[%0d] = %0d", i, data[i]);

end

endmodule


/*---------------------- Expected Output ----------------------

Original Array:
data[0] = 25
data[1] = 10
data[2] = 40
data[3] = 5
data[4] = 30
data[5] = 15

Ascending Order:
data[0] = 5
data[1] = 10
data[2] = 15
data[3] = 25
data[4] = 30
data[5] = 40

Descending Order:
data[0] = 40
data[1] = 30
data[2] = 25
data[3] = 15
data[4] = 10
data[5] = 5

Reverse Order:
data[0] = 5
data[1] = 10
data[2] = 15
data[3] = 25
data[4] = 30
data[5] = 40

Shuffled Array:
data[0]=25
data[1]=40
data[2]=10
data[3]=30
data[4]=5
data[5]=15

--------------------------------------------------------------------------*/
