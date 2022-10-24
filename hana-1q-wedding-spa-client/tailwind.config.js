/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./node_modules/flowbite-react/**/*.js",
    "./pages/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        hanafont: ["HanaFont"],
        antonfont: ["AntonFont"],
        dohyunfont: ["DohyunFont"],
      },
      animation: {
        fadeIn: "fadeIn 2s ease-in forwards",
      },
      keyframes: {
        fadeIn: {
          "0%": { opacity: 0 },
          "100%": { opacity: 1 },
        },
      },
    },
    colors: {
      hana: "#008485",
      logo: "#04bba6",
      hanaRed: "#e93361",
    },
  },
  variants: {
    extend: {
      fontFamily: ["hover", "focus"],
    },
    animation: ["motion-safe"],
  },

  plugins: [require("flowbite/plugin")],
  corePlugins: {
    fontFamily: true,
  },
};
