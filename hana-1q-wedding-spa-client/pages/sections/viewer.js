import React from "react";
import { Carousel } from "flowbite-react";

const Viewer = () => {
  // const videoRef = useRef();

  // useEffect(() => {
  //   setTimeout(() => {
  //     videoRef.current.play();
  //   }, 5000);
  // }, []);

  const videoProperties = [
    {
      id: 1,
      title: "video1",
      src: "videos/hana-1q-celebration.mp4",
      description: "sample video of 1q wedding",
    },
    {
      id: 2,
      title: "video2",
      src: "videos/hana-1q-wedding-simulation.mp4",
      description: "sample video of 1q wedding",
    },
    {
      id: 3,
      title: "video3",
      src: "videos/hana-1q-wedding-celebration.mp4",
      description: "sample video of 1q wedding",
    },
  ];

  return (
    <div id="viewer-section">
      <div className="sm:h-64 xl:h-80 2xl:h-96 mx-56">
        <Carousel>
          {videoProperties.map((videoObject) => {
            return (
              <div key={videoObject.id} className="place-items-center">
                <video
                  // ref={videoRef}
                  controls
                  width="100%"
                  height="100%"
                  loop
                  muted
                  src={videoObject.src}
                />
                <h3>{videoObject.title}</h3>
                <p>{videoObject.description}</p>
              </div>
            );
          })}
          {/* <img
            src="https://flowbite.com/docs/images/carousel/carousel-1.svg"
            alt="..."
          />
          <img
            src="https://flowbite.com/docs/images/carousel/carousel-2.svg"
            alt="..."
          />
          <img
            src="https://flowbite.com/docs/images/carousel/carousel-3.svg"
            alt="..."
          />
          <img
            src="https://flowbite.com/docs/images/carousel/carousel-4.svg"
            alt="..."
          />
          <img
            src="https://flowbite.com/docs/images/carousel/carousel-5.svg"
            alt="..."
          /> */}
        </Carousel>
      </div>
    </div>
  );
};

export default Viewer;
