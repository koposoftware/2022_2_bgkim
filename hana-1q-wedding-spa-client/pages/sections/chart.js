import React from "react";
import Normal from "../sections/charts/normal";
import Radar from "../sections/charts/radar";

const Chart = () => {
  return (
    <div id="intro-section">
      <section class="text-gray-600 body-font">
        <div class="flex flex-col text-center w-full mb-20">
          <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">
            Charts
          </h1>
          <p class="lg:w-2/3 mx-auto leading-relaxed text-base">
            Whatever cardigan tote bag tumblr hexagon brooklyn asymmetrical
            gentrify, subway tile poke farm-to-table. Franzen you probably
            havent heard of them.
          </p>
        </div>
        <div class="container mx-auto flex flew-row justify-center">
          <div className="bg-gray-200 my-20 mx-20 flex flex-auto place-items-center place-content-center">
            <Normal />
          </div>
          <div className="bg-gray-200 my-20 mx-20 flex flex-auto place-items-center place-content-center">
            <Radar />
          </div>
        </div>
      </section>
      <div class="flex flex-col text-center mt-20">
        <div className="flex flex-auto w-1/6 mx-auto mb-20 border-b-8 rounded border-teal-500"></div>
      </div>
    </div>
  );
};

export default Chart;
