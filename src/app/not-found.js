import Link from 'next/link';

export default function NotFound() {
  return (
    <div className="flex flex-col items-center justify-center min-h-[70vh] gap-6 text-center px-4">
      <h1 className="text-6xl font-bold text-gray-900 dark:text-gray-100">404</h1>
      <h2 className="text-2xl font-semibold text-gray-700 dark:text-gray-300">Không tìm thấy trang</h2>
      <p className="text-gray-500 max-w-md">
        Rất tiếc, trang bạn đang tìm kiếm không tồn tại, đã bị xóa hoặc đã được thay đổi đường dẫn.
      </p>
      <Link 
        href="/" 
        className="mt-4 px-6 py-3 bg-blue-600 text-white rounded-full hover:bg-blue-700 transition font-medium"
      >
        Về Trang Chủ
      </Link>
    </div>
  );
}
