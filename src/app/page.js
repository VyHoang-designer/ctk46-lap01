import Link from 'next/link';

export default function Home() {
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <main className="flex flex-col gap-8 row-start-2 items-start max-w-2xl mx-auto">
        <h1 className="text-4xl font-bold">Xin chào, tôi là Vy Hoang 👋</h1>
        <p className="text-lg text-gray-700 dark:text-gray-300">
          Đây là trang Portfolio và Blog cá nhân của tôi. Nơi tôi chia sẻ về những dự án và bài viết về công nghệ.
        </p>
        <div className="flex gap-4">
          <Link href="/about" className="rounded-full shadow-sm border border-solid border-transparent transition-colors flex items-center justify-center bg-blue-600 text-white gap-2 hover:bg-blue-700 text-sm sm:text-base h-10 sm:h-12 px-4 sm:px-5">
            Tìm hiểu thêm về tôi
          </Link>
          <Link href="/contact" className="rounded-full border border-solid border-black/[.08] dark:border-white/[.145] transition-colors flex items-center justify-center hover:bg-[#f2f2f2] dark:hover:bg-[#1a1a1a] hover:border-transparent text-sm sm:text-base h-10 sm:h-12 px-4 sm:px-5 sm:min-w-44">
            Liên hệ
          </Link>
        </div>
      </main>
    </div>
  );
}
