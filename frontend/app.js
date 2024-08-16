import React from 'react';

function App() {
  const handleClick = () => {
    window.open('http://<STORE_PUBLIC_IP>:3000', '_blank'); // Replace <STORE_PUBLIC_IP> with the actual IP address
  };

  return (
    <div>
      <h1>Ecommerece-website</h1>
      <button onClick={handleClick}>Go to Store</button>
    </div>
  );
}

export default App;
