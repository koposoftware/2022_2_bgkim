import React, { useRef } from "react";
import ReactSignatureCanvas from "react-signature-canvas";
import Layout from "../components/layout";

const Canvas = () => {
  const signCanvas = useRef();

  const clear = () => {
    signCanvas.current.clear();
  };

  const save = async () => {
    console.log("try save");
    const image = signCanvas.current.getTrimmedCanvas().toDataURL("image/png");
    const link = document.createElement("a");
    link.href = image;
    link.download = "sample.png";
    link.click();
    // const { uploadURL } = await (await fetch(`/api/files`)).json();
    // const form = new FormData();
    // form.append("file", image[0]);
    // const {} = await (
    //   await fetch(uploadURL, {
    //     method: "POST",
    //     body: form,
    //   })
    // ).json();
  };

  return (
    <Layout>
      <div id="canvas-section">
        <section>
          <div className="bg-teal-800">
            <div className="flex flex-col justify-center h-screen items-center">
              <div className="canvas bg-gray-100 rounded-lg ring-2 ring-blue-100/50 shadow-2xl shadow-indigo-500/40 justify-center bg-red md:w-1/2 w-full md:h-1/2 h-full mt-20 md:mt-0">
                <ReactSignatureCanvas
                  ref={signCanvas}
                  canvasProps={{
                    className: "sigCanvas canvasStyle",
                  }}
                  penColor="black"
                />
              </div>
              <div className="py-10 flex flex-col md:flex md:flex-row">
                <button
                  onClick={clear}
                  className="rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                >
                  수정하기
                </button>
                <button
                  onClick={save}
                  className="rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                >
                  저장하기
                </button>
                <button
                  onClick={() => {
                    location.href = "http://localhost:8080/hanaPoint";
                  }}
                  className="rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                >
                  전송하기
                </button>
              </div>
            </div>
          </div>
        </section>
      </div>
    </Layout>
  );
};

export default Canvas;
