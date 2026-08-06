/********************************************************************
Title: Queue Operations

Problem Statement:
1. Declare and initialize a queue with values 10, 20, 30, and 40.
2. Display all queue elements.
3. Insert 15 at index 1.
4. Delete the element at index 3.
5. Push 50 to the back of the queue.
6. Push 5 to the front of the queue.
7. Display the updated queue after each operation.
8. Display the final size of the queue.

Concepts Covered:
- Queue Declaration
- foreach Loop
- insert()
- delete()
- push_back()
- push_front()
- size()
********************************************************************/

module tb;

    int data[$] = {10,20,30,40};

    initial begin

        $display("Original Queue:");
        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

        data.insert(1,15);

        $display("\nAfter insertion:");
        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

        data.delete(3);

        $display("\nAfter deletion:");
        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

        data.push_back(50);

        $display("\nAfter push_back:");
        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

        data.push_front(5);

        $display("\nAfter push_front:");
        foreach (data[i])
            $display("data[%0d] = %0d", i, data[i]);

        $display("\nQueue Size = %0d", data.size());

    end

endmodule

/*---------------------- Expected Output ----------------------

Original Queue:
data[0] = 10
data[1] = 20
data[2] = 30
data[3] = 40

After insertion:
data[0] = 10
data[1] = 15
data[2] = 20
data[3] = 30
data[4] = 40

After deletion:
data[0] = 10
data[1] = 15
data[2] = 20
data[3] = 40

After push_back:
data[0] = 10
data[1] = 15
data[2] = 20
data[3] = 40
data[4] = 50

After push_front:
data[0] = 5
data[1] = 10
data[2] = 15
data[3] = 20
data[4] = 40
data[5] = 50

Queue Size = 6

-------------------------------------------------------------*/
