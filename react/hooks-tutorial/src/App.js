import React, { useState } from 'react';
import Info from "./Info";
import Counter from "./Counter";
import Average from "./Average";
function App() {
  const [visible, setVisible] = useState(false);

  return (
    <div>
      <Info />
    </div>
  );
}

export default App;
