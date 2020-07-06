#OpenQasm Input

//Excited State
OPENQASM 2.0;
include "qelib1.inc";

// Register declarations
qreg q[1];
creg c[1];

// Quantum Circuit
x q[0];
measure q -> c;

#Qiskit Alternative

# excited_state.py
from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister, execute, Aer

# Define the Quantum and Classical Registers
q = QuantumRegister(1)
c = ClassicalRegister(1)

# Build the circuit
excited_state = QuantumCircuit(q, c)
excited_state.x(q)
excited_state.measure(q, c)

# Execute the circuit
job = execute(excited_state, backend = Aer.get_backend('qasm_simulator'), shots=1024) // Refer The Qubit-1 for more details
result = job.result()

# Print the result
print(result.get_counts(excited_state))
