module testbench;
    reg a;
    reg b;
    wire y;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Test sequence
    initial begin
        // Open a VCD file for GTKWave
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Test case 1: a = 0, b = 0
        a = 0; b = 0;
        #10; // Wait for 10 time units

        // Test case 2: a = 0, b = 1
        a = 0; b = 1;
        #10;

        // Test case 3: a = 1, b = 0
        a = 1; b = 0;
        #10;

        // Test case 4: a = 1, b = 1
        a = 1; b = 1;
        #10;

        // Finish simulation
        $finish;
    end
endmodule