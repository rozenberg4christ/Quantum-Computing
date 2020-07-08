/* IBM Quantum Experience uses a physical type of qubit called
 a superconducting transmon qubit, which is made from superconducting materials
 such as niobium and aluminum, patterned on a silicon substrate. */

#The ground state of the qubit is being checked

#OpenQasm Input

//Single Q Measurement
OPENQASM 2.0;
include "qelib1.inc";

// Register declarations
qreg q[1];
creg c[1];

// Quantum Circuit
measure q -> c;

#Qiskit Alternative

# single_q_measurement.py
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister, execute, Aer

# Define the Quantum and Classical Registers
q = QuantumRegister(1)
c = ClassicalRegister(1)

# Build the circuit
single_q_measurement = QuantumCircuit(q, c)
single_q_measurement.measure(q, c)

# Execute the circuit
job = execute(single_q_measurement, backend = Aer.get_backend('qasm_simulator'), shots=1024)   //backend can be any IBM Quantum Computer Available and shots can go upto 8192
result = job.result()

# Print the result
print(result.get_counts(single_q_measurement))
