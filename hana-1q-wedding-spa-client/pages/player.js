import React, { useState } from "react";
import Layout from "../components/layout";

const Player = () => {
  const [videoFilePath, setVideoFilePath] = useState(null);

  const handleVideoUpload = (event) => {
    setVideoFilePath(URL.createObjectURL(event.target.files[0]));
  };

  return (
    <>
      <Layout>
        <div id="player-section" className="bg-teal-800">
          <section className="text-gray-600 body-font">
            <div className="flex justify-center mx-20 py-20">
              <div className="flex-col items-center place-items-center">
                <div>
                  <input type="file" onChange={handleVideoUpload} />
                </div>
                <div className="max-w-3xl">
                  <video
                    // ref={videoRef}
                    controls
                    width="100%"
                    height="100%"
                    // loop
                    // muted
                    src={videoFilePath}
                    poster="hana-3d-logo.png"
                  />
                </div>
              </div>
            </div>
          </section>
        </div>
      </Layout>
    </>
  );
};

export default Player;
