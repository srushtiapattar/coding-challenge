/********************************************************************
Problem Statement:
1. Declare an associative array of integers with string as the index.
2. Insert key-value pairs.
3. Display all key-value pairs using foreach.

Concepts Covered:
- Associative Array
- String Index
- foreach Loop
********************************************************************/

module tb;

    int subj[string];

    initial begin
        subj["Math"] = 95;
        subj["Science"] = 88;
        subj["English"] = 91;

        foreach (subj[i])
            $display("%s = %0d", i, subj[i]);
    end

endmodule

/*---------------------- Expected Output ----------------------

English = 91
Math = 95
Science = 88

--------------------------------------------------------------*/
