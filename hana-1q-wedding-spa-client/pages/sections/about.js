import React from "react";
import Qrcode from "../../components/qrcode";
import Image from "next/image";

const About = () => {
  const appStoreURL =
    "https://static.toss.im/png-icons/timeline/applekorea.png";
  const playStoreURL =
    "https://static.toss.im/png-icons/timeline/googleplay.png";
  const videoObjectSrc = "videos/videoGate.mp4";

  return (
    <div id="about-section" className="bg-gray-100">
      <div className="relative flex items-center justify-center h-screen overflow-hidden">
        <div class="relative z-30 bg-opacity-80 p-5 text-white rounded-xl mb-60 items-center bg-white mt-20 shadow-2xl">
          <div className="flex flex-row m-10 bg-opacity-30 items-center justify-center text-center place-items-center">
            <Qrcode />
          </div>
          <div className="flex flex-col md:flex-row sm:flex-row lg:flex-row items-center justify-center">
            <div class="flex flex-row items-center justify-center bg-black w-52 h-12 rounded-lg m-3 shadow-lg mt-10 bg-opacity-80 hover:bg-teal-500 hover:opacity-80 hover:shadow-lg focus:bg-teal-800 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-teal-800 active:shadow-lg transition duration-150 ease-in-out">
              <div className="mr-2 mt-1">
                <a
                  type="button"
                  aria-disabled="false"
                  target="_blank"
                  href="https://itunes.apple.com/kr/app/%ED%86%A0%EC%8A%A4/id839333328?mt=8"
                  rel="noreferrer noopener"
                >
                  {/* <Image
                    src={appStoreURL}
                    width="30"
                    height="30"
                    alt="app-store"
                  /> */}
                </a>
              </div>
              <div className="text-white">로그인</div>
            </div>
            <div class="flex flex-row items-center justify-center bg-black w-52 h-12 rounded-lg m-3 shadow-lg mt-10 bg-opacity-80 hover:bg-teal-500 hover:opacity-80 hover:shadow-lg focus:bg-teal-800 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-teal-800 active:shadow-lg transition duration-150 ease-in-out">
              <div className="mr-2 mt-1">
                <a
                  type="button"
                  aria-disabled="false"
                  target="_blank"
                  href="https://itunes.apple.com/kr/app/%ED%86%A0%EC%8A%A4/id839333328?mt=8"
                  rel="noreferrer noopener"
                >
                  {/* <Image
                    src={playStoreURL}
                    width="30"
                    height="30"
                    alt="app-store"
                  /> */}
                </a>
              </div>
              <div className="text-white">회원가입</div>
            </div>
          </div>
        </div>
        <video
          playsInline
          autoPlay
          muted
          loop
          className="absolute z-10 w-auto min-w-full min-h-full max-w-none opacity-100"
        >
          <source src={videoObjectSrc} type="video/mp4" />
          Your browser does not support the video tag.
        </video>
      </div>
    </div>
  );
};

export default About;
