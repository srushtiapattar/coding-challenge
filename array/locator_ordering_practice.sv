/********************************************************************
Problem Statement:
1. Create a dynamic array with:
      {45, 12, 67, 12, 89, 23, 12}
2. Display the original array.
3. Find all occurrences of 12.
4. Display the indices of all occurrences.
5. Sort the array.
6. Reverse the array.
7. Shuffle the array.
8. Display the array after every operation.

Concepts Covered:
- Dynamic Array
- Array Locator Methods
- Array Ordering Methods
- find()
- find_index()
- sort()
- reverse()
- shuffle()
********************************************************************/

module tb();

int data[] = '{45,12,67,12,89,23,12};
int q_store[$];

initial
begin

    // Display original array
    foreach(data[i])
        $display("data[%0d]=%0d", i, data[i]);

    // Find all occurrences of 12
    q_store = data.find() with (item == 12);
    $display("\nAll occurrences of 12:");
    foreach(q_store[i])
        $display("q_store[%0d]=%0d", i, q_store[i]);

    // Display indices of all occurrences
    q_store = data.find_index() with (item == 12);
    $display("\nIndices of all occurrences:");
    foreach(q_store[i])
        $display("q_store[%0d]=%0d", i, q_store[i]);

    // Sort the array
    data.sort();
    $display("\nSorted Array:");
    foreach(data[i])
        $display("data[%0d]=%0d", i, data[i]);

    // Reverse the array
    data.reverse();
    $display("\nReverse Sorted Array:");
    foreach(data[i])
        $display("data[%0d]=%0d", i, data[i]);

    // Shuffle the array
    data.shuffle();
    $display("\nShuffled Array:");
    foreach(data[i])
        $display("data[%0d]=%0d", i, data[i]);

end

endmodule


/*---------------------- Expected Output ----------------------

data[0]=45
data[1]=12
data[2]=67
data[3]=12
data[4]=89
data[5]=23
data[6]=12

All occurrences of 12:
q_store[0]=12
q_store[1]=12
q_store[2]=12

Indices of all occurrences:
q_store[0]=1
q_store[1]=3
q_store[2]=6

Sorted Array:
data[0]=12
data[1]=12
data[2]=12
data[3]=23
data[4]=45
data[5]=67
data[6]=89

Reverse Sorted Array:
data[0]=89
data[1]=67
data[2]=45
data[3]=23
data[4]=12
data[5]=12
data[6]=12

Shuffled Array:
data[0]=12
data[1]=67
data[2]=45
data[3]=12
data[4]=23
data[5]=12
data[6]=89

--------------------------------------------------------------*/
