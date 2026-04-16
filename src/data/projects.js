export const projects = [
  {
    id: "portfolio-website",
    title: "Website Portfolio & Blog Cá Nhân",
    description: "Trang web Portfolio cá nhân được xây dựng bằng Next.js App Router, Tailwind CSS. Quản lý source code trên GitHub và tự động triển khai.",
    content: `Dự án này được xây dựng nhằm tạo một trang web cá nhân chuyên nghiệp, nơi giới thiệu bản thân, liệt kê các dự án đã thực hiện và chia sẻ kiến thức qua blog.

Tính năng chính:
- Routing tự động với Next.js App Router
- Dynamic routes cho blog và chi tiết dự án
- Responsive design với Tailwind CSS
- Dark mode support
- SEO-friendly với metadata

Kiến trúc:
- Sử dụng Server Components mặc định để tối ưu hiệu suất
- Tách biệt data layer (src/data/) và UI layer (src/app/)
- Component tái sử dụng (Navbar, Footer)`,
    tech: ["Next.js", "Tailwind CSS", "Vercel", "GitHub"],
    date: "2026-04",
    status: "Đang phát triển",
  },
  {
    id: "hotel-booking",
    title: "Hệ thống Đặt phòng Khách sạn",
    description: "Ứng dụng web .NET 9.0 với architecture phân lớp (Presentation, Domain, Infrastructure), hỗ trợ quản lý phòng, đặt phòng, SQL Database và thanh toán.",
    content: `Đồ án xây dựng hệ thống đặt phòng khách sạn trực tuyến với kiến trúc Clean Architecture.

Tính năng chính:
- Quản lý danh sách phòng (thêm, sửa, xóa, tìm kiếm)
- Đặt phòng online với lịch trực quan
- Quản lý khách hàng và hóa đơn
- Dashboard admin thống kê doanh thu
- Hỗ trợ đa ngôn ngữ (Tiếng Việt, English)

Kiến trúc 3 lớp:
- Presentation Layer: Razor Pages / MVC Controllers
- Domain Layer: Entities, Interfaces, Business Logic
- Infrastructure Layer: EF Core, SQL Server, Repositories`,
    tech: [".NET 9.0", "C#", "SQL Server", "EF Core"],
    date: "2026-03",
    status: "Hoàn thành",
  },
  {
    id: "ecommerce-app",
    title: "E-Commerce App & Offline Chatbot",
    description: "Ứng dụng thương mại điện tử Ionic có tích hợp VNPay payment gateway và tính năng Chatbot AI offline.",
    content: `Ứng dụng mobile thương mại điện tử đa nền tảng (iOS & Android) được xây dựng bằng Ionic Framework.

Tính năng chính:
- Danh mục sản phẩm với bộ lọc và tìm kiếm
- Giỏ hàng và thanh toán (COD + VNPay QR)
- Chatbot offline tư vấn sản phẩm (rule-based)
- Hệ thống đăng ký/đăng nhập với xác thực
- Đa ngôn ngữ (i18n)
- Profile người dùng với địa chỉ giao hàng

Chatbot hoạt động theo cơ chế keyword matching, phân tích câu hỏi người dùng và trả về sản phẩm phù hợp từ ProductService mà không cần kết nối internet.`,
    tech: ["Ionic", "TypeScript", "VNPay API", "Angular"],
    date: "2026-02",
    status: "Hoàn thành",
  },
];

export function getProjectById(id) {
  return projects.find((project) => project.id === id);
}
