# 🔌 Verilog HDL Essentials – From Basics to Simulation

Welcome to the **Verilog HDL Essentials** repository – **your one-stop guide** to understanding and simulating digital logic using Verilog HDL! Whether you're a beginner or brushing up on fundamentals, this guide will walk you through module creation, testbench writing, tool setup, and waveform visualization using industry-standard tools.

In this repository, I’ll be implementing and simulating core digital components, ranging from simple logic gates to a complete ALU, using **Icarus Verilog**, **GTKWave**, and **VS Code**.

> ⚡ **Follow along if you're an ECE student, a VLSI enthusiast, or diving into RTL Design!**

---

## 🚀 Objective

To build a strong foundation in digital design by:
- Writing clean, modular Verilog code
- Simulating designs with Icarus Verilog
- Visualizing waveforms with GTKWave
- Sharing daily learnings with the community

---

## 🛠 Tools & Technologies

- 🧠 **Verilog HDL**
- 🛠️ **Icarus Verilog (iverilog)** — Simulator
- 📊 **GTKWave** — Waveform viewer
- 🖥️ **VS Code** — Code editor

---

# 📀 Verilog Module Structure

```verilog
module module_name (
    input wire a,
    input wire b,
    output wire y
);
    // Example logic
    assign y = a & b;
endmodule
```

---

## 🧪 Writing a Testbench

```verilog
`timescale 1ns/1ps

module module_name_tb;
    reg a, b;
    wire y;

    module_name uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("Testing module_name");
        $monitor("a=%b, b=%b, y=%b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, module_name_tb);
    end
endmodule
```


## 📚 Learning Outcomes

- Strong grasp of gate, dataflow, and behavioral modeling
- Hands-on experience simulating RTL designs
- Familiarity with digital circuit testing and waveform analysis
- Confidence to pursue FPGA and SoC projects

---

## 🔗 Connect & Contribute

- 📌 GitHub Repo:[15-Days-Verilog-Fundamentals](https://github.com/Shashank-3002/15-Days-of-Verilog-Fundamentals)
- 🤝 Follow my progress on [LinkedIn](https://www.linkedin.com/in/shashank-naragundmath-980617288/)
- 🌱 Feel free to fork, clone, or suggest improvements!

---

## 🧠 #VerilogChallenge | #RTLDesign | #ECE | #VLSI | #DigitalLogic

Let’s code the hardware future — one gate at a time 💡

