import React, { useState } from 'react';
import Info from "./Info";
import Counter from "./Counter";
function App() {
  const [visible, setVisible] = useState(false);

  return (
    <div>
      <Info />
    </div>
  );
}

export default App;
