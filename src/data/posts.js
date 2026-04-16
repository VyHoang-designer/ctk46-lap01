export const posts = [
  {
    id: "bai-viet-1",
    title: "Bắt đầu với Next.js App Router",
    description: "Tìm hiểu cách sử dụng App Router trong Next.js 14+ để xây dựng ứng dụng web hiện đại.",
    content: `Next.js App Router là một cách tiếp cận mới để xây dựng ứng dụng React. Thay vì sử dụng Pages Router truyền thống, App Router cho phép bạn tận dụng các tính năng mới nhất của React như Server Components, Streaming, và nhiều hơn nữa.

Một số điểm nổi bật:
- File-based routing: Mỗi thư mục trong src/app/ tự động trở thành một route.
- Layout nesting: Các layout có thể lồng nhau và chia sẻ giữa các trang con.
- Server Components mặc định: Giúp giảm kích thước JavaScript gửi đến client.
- Loading & Error UI: Dễ dàng tạo giao diện loading và xử lý lỗi cho từng route.`,
    date: "2026-04-10",
    author: "Vy Hoang",
    tags: ["Next.js", "React", "Web Development"],
  },
  {
    id: "bai-viet-2",
    title: "Tailwind CSS: Từ cơ bản đến nâng cao",
    description: "Hướng dẫn chi tiết cách sử dụng Tailwind CSS để xây dựng giao diện nhanh chóng và đẹp mắt.",
    content: `Tailwind CSS là một utility-first CSS framework cho phép bạn xây dựng giao diện trực tiếp trong HTML/JSX mà không cần viết CSS riêng.

Ưu điểm chính:
- Nhanh chóng: Không cần chuyển đổi giữa file HTML và CSS.
- Nhất quán: Sử dụng hệ thống design token thống nhất (spacing, colors, typography).
- Responsive: Dễ dàng tạo giao diện responsive với các prefix như sm:, md:, lg:.
- Dark mode: Hỗ trợ dark mode với prefix dark:.

Ví dụ một button đơn giản:
className="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition"`,
    date: "2026-04-12",
    author: "Vy Hoang",
    tags: ["CSS", "Tailwind", "Frontend"],
  },
  {
    id: "bai-viet-3",
    title: "Git & GitHub cho người mới bắt đầu",
    description: "Tổng hợp các lệnh Git cơ bản và cách sử dụng GitHub để quản lý source code hiệu quả.",
    content: `Git là hệ thống quản lý phiên bản phân tán, giúp theo dõi mọi thay đổi trong source code. GitHub là nền tảng hosting cho Git repositories.

Các lệnh Git cơ bản:
- git init: Khởi tạo repository mới
- git add .: Thêm tất cả file vào staging area
- git commit -m "message": Tạo commit với mô tả
- git push origin main: Đẩy code lên remote repository
- git pull: Kéo code mới nhất từ remote
- git branch: Quản lý các nhánh phát triển

Quy trình làm việc với GitHub:
1. Fork repository
2. Clone về máy local
3. Tạo branch mới cho feature
4. Code và commit thường xuyên
5. Push và tạo Pull Request`,
    date: "2026-04-14",
    author: "Vy Hoang",
    tags: ["Git", "GitHub", "DevOps"],
  },
  {
    id: "bai-viet-4",
    title: "Xây dựng REST API với Node.js và Express",
    description: "Hướng dẫn từng bước xây dựng một REST API đơn giản phục vụ cho ứng dụng frontend.",
    content: `REST API là kiến trúc phổ biến nhất để xây dựng backend cho ứng dụng web. Với Node.js và Express, bạn có thể tạo API nhanh chóng.

Cấu trúc project cơ bản:
- server.js: Entry point
- routes/: Định nghĩa các endpoints
- controllers/: Logic xử lý request
- models/: Định nghĩa data schema

HTTP Methods:
- GET: Lấy dữ liệu
- POST: Tạo mới dữ liệu
- PUT: Cập nhật toàn bộ
- PATCH: Cập nhật một phần
- DELETE: Xóa dữ liệu

Mỗi endpoint nên trả về status code phù hợp: 200 (OK), 201 (Created), 404 (Not Found), 500 (Server Error).`,
    date: "2026-04-16",
    author: "Vy Hoang",
    tags: ["Node.js", "Express", "Backend"],
  },
];

export function getPostBySlug(slug) {
  return posts.find((post) => post.id === slug);
}
