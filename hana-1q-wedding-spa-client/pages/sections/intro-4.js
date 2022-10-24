import React, { useEffect } from "react";
import Image from "next/image";
import AOS from "aos";
import "aos/dist/aos.css";

const Intro4 = () => {
  useEffect(() => {
    AOS.init();
  });

  return (
    <div id="intro-section" className="bg-white">
      <section class="text-gray-600 body-font mx-20">
        <div class=" mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
          <div class="lg:flex-grow md:w-1/2 lg:pl-24 md:pl-16 flex flex-col md:items-start md:text-left items-center text-center">
            <h1 class="title-font sm:text-5xl text-3xl mb-4 font-medium text-gray-900">
              <div
                className="flex flew-row"
                data-aos="fade-right"
                data-aos-easing="linear"
                data-aos-duration="1500"
              >
                진심을 <p className="ml-2 text-hanaRed drop-shadow-xl">보는</p>
              </div>
              <div className="mt-2"></div>1Q Wedding
            </h1>
          </div>
          <div class="flex flex-row lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0 mr-36">
            <div className="items-center">
              <div
                className="lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0"
                data-aos="fade-left"
                data-aos-easing="linear"
                data-aos-duration="1500"
              >
                <Image
                  // className="object-cover object-center rounded"
                  alt="hero"
                  src="/graph-image.png"
                  width={2060}
                  height={1836}
                />
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Intro4;
