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

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We cannot use structural Verilog to implement latches because it is prone to synthesis error, while behavioral code allows synthesis tools to reliably connect storage elements.
### What is the meaning of always @(*) in a sensitivity block?
This sensitivity block ensures that the code consistently re-evaluates any changed inputs, preventing any differences between synthesis and hardware. 
### What importance is memory to digital circuits?
Memory enables us to work based off state stored over time rather than only responding to current inputs. This attribute is essential for sequential logic and holding data.
