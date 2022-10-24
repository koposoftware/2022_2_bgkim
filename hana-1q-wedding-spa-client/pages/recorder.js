import React from "react";
import Webcam from "react-webcam";
import Layout from "../components/layout";

const Recorder = () => {
  const webcamRef = React.useRef(null);
  const mediaRecorderRef = React.useRef(null);
  const [capturing, setCapturing] = React.useState(false);
  const [recordedChunks, setRecordedChunks] = React.useState([]);

  const handleStartCaptureClick = React.useCallback(() => {
    setCapturing(true);
    mediaRecorderRef.current = new MediaRecorder(webcamRef.current.stream, {
      mimeType: "video/webm",
    });
    mediaRecorderRef.current.addEventListener(
      "dataavailable",
      handleDataAvailable
    );
    mediaRecorderRef.current.start();
  }, [webcamRef, setCapturing, mediaRecorderRef]);

  const handleDataAvailable = React.useCallback(
    ({ data }) => {
      if (data.size > 0) {
        setRecordedChunks((prev) => prev.concat(data));
      }
    },
    [setRecordedChunks]
  );

  const handleStopCaptureClick = React.useCallback(() => {
    mediaRecorderRef.current.stop();
    setCapturing(false);
  }, [mediaRecorderRef, setCapturing]);

  const handleDownload = React.useCallback(() => {
    if (recordedChunks.length) {
      const blob = new Blob(recordedChunks, {
        type: "video/webm",
      });
      const url = URL.createObjectURL(blob);
      const a = document.createElement("a");
      document.body.appendChild(a);
      a.style = "display: none";
      a.href = url;
      a.download = "react-webcam-stream-capture.webm";
      a.click();
      window.URL.revokeObjectURL(url);
      setRecordedChunks([]);
      console.log("upload url : ");
      console.log(url);
      console.log(a.download);
    }
  }, [recordedChunks]);

  const handleUpload = React.useCallback(() => {
    if (recordedChunks.length) {
      const blob = new Blob(recordedChunks, {
        type: "video/webm",
      });
      const url = URL.createObjectURL(blob);
      const a = document.createElement("a");
      document.body.appendChild(a);
      a.style = "display: none";
      a.href = url;
      a.download = "react-webcam-stream-capture.webm";
      a.click();
      window.URL.revokeObjectURL(url);
      setRecordedChunks([]);
    }
  }, [recordedChunks]);

  const videoConstraints = {
    width: 800,
    height: 480,
    facingMode: "user",
  };

  return (
    <>
      <Layout>
        <div id="recorder-section">
          <section>
            <div className="bg-teal-800">
              <div className="flex flex-col justify-center h-screen items-center">
                <div className="bg-gray-100 rounded-lg ring-blue-100/50 shadow-2xl shadow-indigo-500/40 justify-center">
                  <Webcam
                    audio={false}
                    ref={webcamRef}
                    videoConstraints={videoConstraints}
                  />
                </div>
                <div className="mt-20 text-center">
                  {capturing ? (
                    <div className="">
                      <button
                        onClick={handleStopCaptureClick}
                        className="w-80 rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                      >
                        Stop Capture
                      </button>
                    </div>
                  ) : (
                    <div className="">
                      <button
                        onClick={handleStartCaptureClick}
                        className="w-80 rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                      >
                        축하 영상 보내기
                      </button>
                    </div>
                  )}
                  {recordedChunks.length > 0 && (
                    <div>
                      <div className="">
                        <button
                          onClick={handleDownload}
                          className="w-80 rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                        >
                          Download
                        </button>
                      </div>
                      <div className="">
                        <button
                          onClick={() => {
                            location.href = "http://localhost:8080/hanaPoint";
                          }}
                          className="w-80 rounded-3xl h-20 px-14 m-2 text-2xl border-2 hover:bg-blue-100 hover:text-teal-700 text-white font-bold text-center"
                        >
                          Upload
                        </button>
                      </div>
                    </div>
                  )}
                </div>
              </div>
            </div>
          </section>
        </div>
      </Layout>
    </>
  );
};

export default Recorder;
