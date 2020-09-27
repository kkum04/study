import React, { useState } from 'react';
import axios from 'axios';


function App() {
  const [data, setData] = useState(null);
  const onClick = async () => {
    try {
      const response = await axios.get("https://newsapi.org/v2/top-headlines?country=kr&apiKey=a39e745dc2104488a41cce495b954ced")
      setData(response.data);
    } catch (e) {
      console.error(e);
    }
  };

  return (
    <div>
      <div>
        <button onClick={onClick}>불러오기</button>
      </div>

      {data &&
        <textarea
          rows={7}
          value={JSON.stringify(data, null, 2)}
          readOnly={true}
        />
      }
    </div>
  );
}

export default App;
