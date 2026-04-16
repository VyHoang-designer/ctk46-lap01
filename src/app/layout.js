import { Geist, Geist_Mono } from "next/font/google";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
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
        className={`${geistSans.variable} ${geistMono.variable} antialiased selection:bg-blue-100 selection:text-blue-900 bg-white dark:bg-black text-gray-900 dark:text-gray-100 min-h-screen flex flex-col`}
      >
        <Navbar />
        
        <main className="flex-1">{children}</main>
        
        <Footer />
      </body>
    </html>
  );
}
