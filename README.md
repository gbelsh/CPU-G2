# Project Checklist

## Overview
This README.md serves as a checklist for the ongoing project focused on the development of a Processor

## Checklist

### Bus System Tasks
- [ ] Fix bus errors
- [ ] Test bus system for stability and performance

### Arithmetic Modules
- [x] Implement MUL module - Tyler
- [x] Add module - Graydon
- [x] Sub module - Graydon
- [x] Negate module - Graydon
- [x] Not module - Graydon
- [x] Div module

### Logic Modules
- [x] OR module - Graydon
- [x] XOR module - Graydon
- [x] AND module - Graydon

### Shift Modules
- [x] SHR module (Shift Right) - Graydon
- [ ] SHRA module (Shift Right Arithmetic)
- [x] SHL module (Shift Left) - Graydon

### Memory Access Modules
- [x] Implement MDR (Memory Data Register)
- [x] Implement MAR (Memory Address Register)  "Dont think we need this?"
- [x] Implement General Register (Register)

### Control Units
- [x] PC Module (Program Counter Register)
- [x] Z Register
- [x] Y Register

## Testing and Validation
- [ ] Set up Testbench for each module

## Notes
- The cOut signal in the subtraction and addition operation using two's complement arithmetic reflects the carry-out of the addition of A and the two's complement of B, serving as an overflow indicator rather than a traditional borrow from binary subtraction.
- The overflow indicator ensures that systems operate correctly, safely, and securely by detecting and managing situations where calculations exceed the bounds of the chosen representation.
- wire is used to represent connections between parts
- 