import React, { Component } from "react";

class ScrollBox extends Component {

  render() {
    const style = {
      border: '1px solid black',
      height: '300px',
      width: '30px',
      overflow: 'auto',
      position: 'relative'
    }

    const innerStyle = {
      width: '100%',
      height: '650px',
      background: 'liner-gradient(white, black)'
    }
    return (
      <div
        style={style}
        ref={(ref) => this.box = ref}
      >
        <div style={innerStyle} />
      </div>
    );
  }
}

export default ScrollBox;