'use client'; // Error components must be Client Components

import { useEffect } from 'react';

export default function Error({ error, reset }) {
  useEffect(() => {
    // Log the error to an error reporting service
    console.error(error);
  }, [error]);

  return (
    <div className="flex flex-col items-center justify-center min-h-[50vh] gap-4">
      <h2 className="text-2xl font-bold text-red-500">Đã xảy ra lỗi!</h2>
      <p className="text-gray-600 dark:text-gray-400">Rất tiếc, đã có vấn đề xãy ra khi tải trang này.</p>
      <button
        className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition"
        onClick={
          // Attempt to recover by trying to re-render the segment
          () => reset()
        }
      >
        Thử lại
      </button>
    </div>
  );
}
