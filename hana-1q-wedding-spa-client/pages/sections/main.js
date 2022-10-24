import React, { useEffect } from "react";
import Image from "next/image";
import Animation from "../../components/animation";
import Link from "next/link";
import AOS from "aos";
import "aos/dist/aos.css";

const Main = () => {
  const appStoreURL =
    "https://static.toss.im/png-icons/timeline/applekorea.png";
  const playStoreURL =
    "https://static.toss.im/png-icons/timeline/googleplay.png";
  const videoObjectSrc = "videos/videoGate.mp4";

  useEffect(() => {
    AOS.init();
  });

  return (
    <div id="main-section" className="bg-gray-100">
      <div className="relative flex items-center justify-center h-screen overflow-hidden">
        <div className="relative z-30 p-5 text-white bg-opacity-50 rounded-xl mb-60 items-center">
          <h1
            className="flex flex-col text-black text-4xl items-center justify-center text-center leading-sung sm:text-7xl md:text-7xl motion-safe:animate-fadeIn"
          >
            <p className="mb-3">한큐에 끝내는</p>
            <p className="">1Q Wedding</p>
          </h1>
          <div
            className="flex flex-col md:flex-row sm:flex-row lg:flex-row items-center justify-center mt-20"
            data-aos="fade-up"
            data-aos-duration="2000"
          >
            <div class="flex flex-row items-center justify-center bg-black w-52 h-12 rounded-lg m-3 shadow-lg mt-10 bg-opacity-80 hover:bg-teal-500 hover:opacity-80 hover:shadow-lg focus:bg-teal-800 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-teal-800 active:shadow-lg transition duration-150 ease-in-out">
              <div className="">
                <Link href="http://localhost:8080/hanaLogin">
                  <a target="_blank" rel="noopener noreferrer">
                    {/* <Image
                    src={appStoreURL}
                    width="30"
                    height="30"
                    alt="app-store"
                  /> */}
                    <div className="text-white">로그인</div>
                  </a>
                </Link>
              </div>
            </div>
            <div class="flex flex-row items-center justify-center bg-black w-52 h-12 rounded-lg m-3 shadow-lg mt-10 bg-opacity-80 hover:bg-teal-500 hover:opacity-80 hover:shadow-lg focus:bg-teal-800 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-teal-800 active:shadow-lg transition duration-150 ease-in-out">
              <div className="">
                <Link href="http://localhost:8080/join">
                  <a
                    type="button"
                    aria-disabled="false"
                    target="_blank"
                    rel="noreferrer noopener"
                  >
                    {/* <Image
                    src={playStoreURL}
                    width="30"
                    height="30"
                    alt="app-store"
                  /> */}
                    <div className="text-white">회원가입</div>
                  </a>
                </Link>
              </div>
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

export default Main;
