import React from "react";
import Lottie from "react-lottie-player";
import lottieJson from "/public/arrow-down-white.json";

const Animation = ({ width, height }) => {
  return (
    <div>
      <Lottie
        loop
        animationData={lottieJson}
        play
        style={{ width: width, height: height }}
      />
    </div>
  );
};

export default Animation;
