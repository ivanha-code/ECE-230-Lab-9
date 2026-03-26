# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Ivan Ha & Abigail Ames
## Summary
We learned how to make d latch.
We learned how to connect 2 demuxes and a mux.
We learned how store data and display data in a Basys board.
We learned how to use a sensitivity list.
We learned how to use reg data type in verilog.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
It makes the circuit more prown to glitches and more diffuiclt to time.
### What is the meaning of always @(*) in a sensitivity block?
It ensures the blocks triggers whenever any input changes. It is used to prevent mismatches in the simulation.
### What importance is memory to digital circuits?
The importantance of digial memory in cirucits are being able to store and access data for sequential circuits, 