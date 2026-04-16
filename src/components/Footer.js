import Link from 'next/link';

export default function Footer() {
  return (
    <footer className="border-t border-gray-200 dark:border-gray-800 bg-gray-50 dark:bg-gray-950">
      <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div className="flex flex-col sm:flex-row items-center justify-between gap-4">
          <p className="text-sm text-gray-500">
            © {new Date().getFullYear()} Vy Hoang. All rights reserved.
          </p>
          <div className="flex items-center gap-6 text-sm">
            <Link href="/about" className="text-gray-500 hover:text-blue-500 transition-colors">
              Giới thiệu
            </Link>
            <p className="border-l border-gray-300 h-4"></p>
            <a href="mailto:vyhoang-designer@sv.dlu.edu.vn" className="text-gray-500 hover:text-blue-500 transition-colors">
              Email
            </a>
            <a href="https://github.com/VyHoang-designer" target="_blank" rel="noopener noreferrer" className="text-gray-500 hover:text-blue-500 transition-colors">
              GitHub
            </a>
          </div>
        </div>
      </div>
    </footer>
  );
}
