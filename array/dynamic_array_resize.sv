/********************************************************************
Title: Dynamic Array Resizing

Problem Statement:
1. Declare a dynamic array of integers.
2. Allocate memory for 5 elements using new[].
3. Initialize the array with values 10, 20, 30, 40, 50.
4. Display all array elements.
5. Resize the array to 8 elements while preserving existing data.
6. Add 60, 70, and 80 to the new locations.
7. Display the resized array.

Concepts Covered:
- Dynamic Array
- Memory Allocation (new[])
- Array Resizing
- Data Preservation
- foreach Loop
********************************************************************/

module tb;

    int data[] = new[5];

    initial begin

        data = '{10,20,30,40,50};

        $display("Before resizing:");

        for (int i = 0; i < $size(data); i++)
            $display("data[%0d] = %0d", i, data[i]);

        data = new[8](data);

        data[5] = 60;
        data[6] = 70;
        data[7] = 80;

        $display("\nAfter resizing:");

        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

    end

endmodule

/*---------------------- Expected Output ----------------------

Before resizing:

data[0] = 10
data[1] = 20
data[2] = 30
data[3] = 40
data[4] = 50

After resizing:

data[0] = 10
data[1] = 20
data[2] = 30
data[3] = 40
data[4] = 50
data[5] = 60
data[6] = 70
data[7] = 80

-------------------------------------------------------------*/
