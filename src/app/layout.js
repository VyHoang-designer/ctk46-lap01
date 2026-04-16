import { Geist, Geist_Mono } from "next/font/google";
import Link from "next/link";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata = {
  title: "CTK46-Lap01 - Portfolio",
  description: "Portfolio cá nhân của Vy Hoang",
};

export default function RootLayout({ children }) {
  return (
    <html lang="vi">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased selection:bg-blue-100 selection:text-blue-900 bg-white dark:bg-black text-gray-900 dark:text-gray-100 `}
      >
        <header className="sticky top-0 z-50 w-full border-b border-gray-200 dark:border-gray-800 bg-white/80 dark:bg-black/80 backdrop-blur">
          <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
            <Link href="/" className="font-bold text-lg hover:opacity-80">
              VyHoang
            </Link>
            <nav className="flex items-center gap-6 text-sm font-medium">
              <Link href="/" className="hover:text-blue-500 transition-colors">Trang chủ</Link>
              <Link href="/about" className="hover:text-blue-500 transition-colors">Giới thiệu</Link>
              <Link href="/blog" className="hover:text-blue-500 transition-colors">Blog</Link>
              <Link href="/projects" className="hover:text-blue-500 transition-colors">Dự án</Link>
              <Link href="/contact" className="hover:text-blue-500 transition-colors">Liên hệ</Link>
            </nav>
          </div>
        </header>
        
        <main>{children}</main>
        
        <footer className="border-t border-gray-200 dark:border-gray-800 py-8 text-center text-sm text-gray-500">
          <p>© {new Date().getFullYear()} Vy Hoang. All rights reserved.</p>
        </footer>
      </body>
    </html>
  );
}
