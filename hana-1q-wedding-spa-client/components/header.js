import React, { useEffect } from "react";
import Image from "next/image";
import Link from "next/link";

const Header = () => {
  return (
    <>
      <header className="sticky top-0 z-50 py-3 text-hana bg-gray-100">
        <div className="container flex justify-between h-10 mx-auto">
          <a
            rel="noopener noreferrer"
            href="#main-section"
            aria-label="Back to homepage"
            className="flex items-center p-2 no-underline"
          >
            <div className="mt-1">
              <Image
                // className="object-cover object-center rounded"
                alt="hero"
                src="/hana-1q-logo-0.png"
                width="60%"
                height="50%"
              />
            </div>
            <div className="text-4xl font-hanafont text-logo font-extrabold ml-2 drop-shadow-xl">
              Wedding
            </div>
          </a>
          <nav className="items-stretch hidden space-x-3 md:flex">
            <Link href="/">
              <a
                rel="noopener noreferrer"
                className="flex items-center text-lg px-4 -mb-1 border-b-2 border-transparent hover:border-teal-600 focus:border-teal-600 no-underline"
              >
                소개
              </a>
            </Link>
            <Link href="/canvas">
              <a
                rel="noopener noreferrer"
                href=""
                className="flex items-center text-lg px-4 -mb-1 border-b-2 border-transparent hover:border-teal-600 focus:border-teal-600 no-underline"
              >
                자필편지
              </a>
            </Link>
            <Link href="/recorder">
              <a
                rel="noopener noreferrer"
                href="#viewer-section"
                className="flex items-center text-lg px-4 -mb-1 border-b-2 border-transparent hover:border-teal-600 focus:border-teal-600 no-underline"
              >
                영상편지
              </a>
            </Link>
            <Link href="https://localhost:8080/" passHref>
              <a
                rel="noopener noreferrer"
                target="_blank"
                className="flex items-center text-lg px-4 -mb-1 border-b-2 border-transparent hover:border-teal-600 focus:border-teal-600 no-underline"
              >
                서비스 이용하기
              </a>
            </Link>
          </nav>
          <button className="flex justify-end p-4 md:hidden">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
              className="w-6 h-6"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16"
              ></path>
            </svg>
          </button>
        </div>
      </header>
    </>
  );
};

export default Header;
