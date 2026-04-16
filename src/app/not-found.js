import Link from 'next/link';

export default function NotFound() {
  return (
    <div className="min-h-[80vh] flex items-center justify-center px-4">
      <div className="text-center max-w-lg">
        {/* Animated 404 illustration */}
        <div className="relative mb-8">
          {/* Floating astronaut animation */}
          <div className="text-9xl font-black text-gray-200 dark:text-gray-800 select-none">
            404
          </div>
          <div className="absolute inset-0 flex items-center justify-center">
            <div className="animate-bounce" style={{ animationDuration: '2s' }}>
              <svg className="w-24 h-24 text-blue-500 opacity-80" viewBox="0 0 120 120" fill="none" xmlns="http://www.w3.org/2000/svg">
                {/* Astronaut helmet */}
                <circle cx="60" cy="45" r="25" stroke="currentColor" strokeWidth="3" fill="white" className="dark:fill-gray-900" />
                <circle cx="60" cy="45" r="18" stroke="currentColor" strokeWidth="2" fill="#dbeafe" className="dark:fill-blue-900" opacity="0.6" />
                {/* Visor reflection */}
                <ellipse cx="53" cy="40" rx="5" ry="7" fill="currentColor" opacity="0.2" />
                {/* Body */}
                <rect x="45" y="68" width="30" height="25" rx="8" stroke="currentColor" strokeWidth="3" fill="white" className="dark:fill-gray-900" />
                {/* Arms */}
                <line x1="45" y1="75" x2="30" y2="65" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
                <line x1="75" y1="75" x2="90" y2="65" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
                {/* Legs */}
                <line x1="52" y1="93" x2="48" y2="108" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
                <line x1="68" y1="93" x2="72" y2="108" stroke="currentColor" strokeWidth="3" strokeLinecap="round" />
                {/* Antenna */}
                <line x1="60" y1="20" x2="60" y2="10" stroke="currentColor" strokeWidth="2" strokeLinecap="round" />
                <circle cx="60" cy="8" r="3" fill="currentColor" />
              </svg>
            </div>
          </div>
        </div>

        {/* Stars animation */}
        <div className="relative">
          <div className="absolute -top-32 left-10 w-2 h-2 bg-yellow-400 rounded-full animate-ping" style={{ animationDuration: '3s' }}></div>
          <div className="absolute -top-24 right-16 w-1.5 h-1.5 bg-yellow-300 rounded-full animate-ping" style={{ animationDuration: '2s', animationDelay: '1s' }}></div>
          <div className="absolute -top-40 right-8 w-1 h-1 bg-blue-400 rounded-full animate-ping" style={{ animationDuration: '4s', animationDelay: '0.5s' }}></div>
        </div>

        <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-100 mb-3">
          Trang không tồn tại
        </h1>
        <p className="text-gray-500 dark:text-gray-400 mb-8 text-lg">
          Có vẻ bạn đã lạc vào không gian! Trang bạn tìm kiếm không tồn tại hoặc đã bị di chuyển.
        </p>

        <div className="flex flex-col sm:flex-row gap-3 justify-center">
          <Link
            href="/"
            className="px-6 py-3 bg-blue-600 text-white rounded-full hover:bg-blue-700 transition font-medium inline-flex items-center gap-2 justify-center"
          >
            <span>🚀</span> Quay về Trang chủ
          </Link>
          <Link
            href="/blog"
            className="px-6 py-3 border border-gray-300 dark:border-gray-700 rounded-full hover:bg-gray-100 dark:hover:bg-gray-800 transition font-medium text-gray-700 dark:text-gray-300 inline-flex items-center gap-2 justify-center"
          >
            <span>📝</span> Đọc Blog
          </Link>
        </div>
      </div>
    </div>
  );
}
