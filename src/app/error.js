'use client';

import { useEffect } from 'react';

export default function GlobalError({ error, reset }) {
  useEffect(() => {
    console.error('Global Error:', error);
  }, [error]);

  return (
    <div className="min-h-[70vh] flex items-center justify-center px-4">
      <div className="max-w-md w-full text-center">
        {/* Error Icon with animation */}
        <div className="mb-6">
          <div className="inline-flex items-center justify-center w-20 h-20 rounded-full bg-red-100 dark:bg-red-900/30 animate-bounce">
            <svg className="w-10 h-10 text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-2.5L13.732 4c-.77-.833-1.964-.833-2.732 0L4.082 16.5c-.77.833.192 2.5 1.732 2.5z" />
            </svg>
          </div>
        </div>

        <h2 className="text-2xl font-bold text-gray-900 dark:text-gray-100 mb-3">
          Đã xảy ra lỗi!
        </h2>
        <p className="text-gray-600 dark:text-gray-400 mb-2">
          Rất tiếc, ứng dụng đã gặp sự cố không mong muốn.
        </p>
        <p className="text-sm text-red-500 dark:text-red-400 bg-red-50 dark:bg-red-900/20 rounded-lg p-3 mb-6 font-mono break-all">
          {error?.message || 'Unknown error'}
        </p>

        <div className="flex flex-col sm:flex-row gap-3 justify-center">
          <button
            onClick={() => reset()}
            className="px-6 py-2.5 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition font-medium"
          >
            🔄 Thử lại
          </button>
          <a
            href="/"
            className="px-6 py-2.5 border border-gray-300 dark:border-gray-700 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-800 transition font-medium text-gray-700 dark:text-gray-300"
          >
            🏠 Về Trang chủ
          </a>
        </div>
      </div>
    </div>
  );
}
