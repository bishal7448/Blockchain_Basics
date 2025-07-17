import { useState, useEffect } from 'react';
import Greeter from './artifacts/contracts/Greeter.sol/Greeter.json';
import { ethers } from 'ethers';
import './App.css';

function App() {
  const [greeting, setGreeting] = useState(null);
  const [contract, setContract] = useState(null);
  const [provider, setProvider] = useState(null);

  useEffect(() => {
    const loadProvider = async () => {
      let contractAddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3"; // Replace with your contract address
      const url = "http://localhost:8545"; // Replace with your provider URL
      const provider = new ethers.providers.JsonRpcProvider(url); // Connect to the Ethereum network
      const contract = new ethers.Contract( // Create a contract instance
        contractAddress,
        Greeter.abi,
        provider
      );
      setProvider(provider);
      setContract(contract);
      // console.log("Contract: ", contract);
    }
    loadProvider();
  }, []);

  useEffect(() => {
    const getGreeting = async () => {
      const greeting = await contract.greet(); // Call the greet function from the contract
      // console.log("Greeting: ", greeting);
      setGreeting(greeting);
    }
    contract && getGreeting(); // Ensure contract is loaded before calling getGreeting
  }, [contract]);

  const updateGreeting = async () => {
    const input = document.querySelector('#value'); // Get the input value
    const signer = contract.connect(provider.getSigner()); // Get the signer to send transactions
    signer.setGreeting(input.value);
    setTimeout(function () {
      window.location.reload(1);
    }, 500);
    setTimeout();
  }

  return (
    <div className="center">
      <h3>{greeting}</h3>
      <input className="input" type="text" id="value"></input>
      <button className="button" onClick={updateGreeting}>
        Change
      </button>
    </div>
  );
}

export default App;
