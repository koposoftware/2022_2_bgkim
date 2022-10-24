import React, { useEffect, useRef } from "react";
import Image from "next/image";
import AOS from "aos";
import "aos/dist/aos.css";

const Intro3 = () => {
  useEffect(() => {
    AOS.init();
    setPlayBack01();
    setPlayBack02();
    setPlayBack03();
  });

  const videoRef01 = useRef();
  const videoRef02 = useRef();
  const videoRef03 = useRef();

  const setPlayBack01 = () => {
    videoRef01.current.playbackRate = 5;
  };
  const setPlayBack02 = () => {
    videoRef02.current.playbackRate = 5;
  };
  const setPlayBack03 = () => {
    videoRef03.current.playbackRate = 5;
  };

  const videoObjectSrc01 = "videos/celebration-canvas-2210230132.mov";
  const videoObjectSrc02 = "videos/celebration-canvas-2210230127.mov";
  const videoObjectSrc03 = "videos/celebration-canvas-2210230500.mov";

  return (
    <div id="intro-section" className="bg-white">
      <section class="text-gray-600 body-font mx-20">
        <div class=" mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
          <div class="flex flex-row lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0">
            <div className="items-center">
              <div
                className="lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0"
                data-aos="fade-right"
                data-aos-easing="linear"
                data-aos-duration="1500"
              >
                <Image
                  // className="object-cover object-center rounded"
                  alt="hero"
                  src="/iPhone12_Clay_Shadow.png"
                  width={600}
                  height={936}
                />
                <div className="absolute top-[8rem] w-[16rem] left-[8rem] z-10">
                  <div className="flex flex-row place-items-center">
                    <Image
                      // className="object-cover object-center rounded"
                      alt="hero"
                      src="/hana-1q-logo-0.png"
                      width="40%"
                      height="30%"
                    />
                    <div className="text-2xl font-hanafont text-logo font-extrabold ml-2 drop-shadow-xl">
                      Wedding
                    </div>
                  </div>
                </div>
                <video
                  playsInline
                  autoPlay
                  muted
                  loop
                  ref={videoRef01}
                  onCanPlay={() => setPlayBack01()}
                  className="absolute top-[14rem] h-[8rem] left-[8rem] shadow-xl w-64"
                >
                  <source src={videoObjectSrc01} type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
                <video
                  playsInline
                  autoPlay
                  muted
                  loop
                  ref={videoRef02}
                  onCanPlay={() => setPlayBack02()}
                  className="absolute top-[24rem] h-[8rem] left-[8rem] shadow-xl w-64"
                >
                  <source src={videoObjectSrc02} type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
                <video
                  playsInline
                  autoPlay
                  muted
                  loop
                  ref={videoRef03}
                  onCanPlay={() => setPlayBack03()}
                  className="absolute top-[34rem] h-[8rem] left-[8rem] shadow-xl w-64"
                >
                  <source src={videoObjectSrc03} type="video/mp4" />
                  Your browser does not support the video tag.
                </video>
              </div>
            </div>
          </div>
          <div class="lg:flex-grow md:w-1/2 lg:pl-24 md:pl-16 flex flex-col md:items-start md:text-left items-center text-center">
            <h1 class="title-font sm:text-5xl text-3xl mb-4 font-medium text-gray-900">
              <div
                className="flex flew-row"
                data-aos="fade-left"
                data-aos-easing="linear"
                data-aos-duration="1500"
              >
                진심을 <p className="ml-2 text-hanaRed drop-shadow-xl">적는</p>
              </div>
              <div className="mt-2"></div>1Q Wedding
            </h1>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Intro3;
