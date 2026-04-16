'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';

const navLinks = [
  { href: '/', label: 'Trang chủ' },
  { href: '/about', label: 'Giới thiệu' },
  { href: '/skills', label: 'Kỹ năng' },
  { href: '/blog', label: 'Blog' },
  { href: '/projects', label: 'Dự án' },
  { href: '/contact', label: 'Liên hệ' },
];

export default function Navbar() {
  const pathname = usePathname();

  return (
    <header className="sticky top-0 z-50 w-full border-b border-gray-200 dark:border-gray-800 bg-white/80 dark:bg-black/80 backdrop-blur">
      <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
        <Link href="/" className="font-bold text-xl hover:opacity-80 transition-opacity">
          Vy Hoang
        </Link>
        <nav className="flex items-center gap-6 text-sm font-medium">
          {navLinks.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              className={`hover:text-blue-500 transition-colors ${
                pathname === link.href
                  ? 'text-blue-600 font-semibold'
                  : 'text-gray-700 dark:text-gray-300'
              }`}
            >
              {link.label}
            </Link>
          ))}
        </nav>
      </div>
    </header>
  );
}
