<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Berita - Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-color: #6366f1;
            --secondary-color: #8b5cf6;
            --success-color: #10b981;
            --warning-color: #f59e0b;
            --danger-color: #ef4444;
            --dark-color: #1f2937;
            --light-color: #f8fafc;
            --border-color: #e5e7eb;
            --shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            color: var(--dark-color);
        }

        .dashboard-container {
            background: var(--light-color);
            min-height: 100vh;
            padding: 2rem 0;
        }

        .dashboard-header {
            background: white;
            padding: 2rem 0;
            box-shadow: var(--shadow);
            margin-bottom: 2rem;
            border-bottom: 3px solid var(--primary-color);
        }

        .dashboard-title {
            font-weight: 700;
            color: var(--dark-color);
            font-size: 2rem;
            margin-bottom: 0.5rem;
        }

        .dashboard-subtitle {
            color: #6b7280;
            font-weight: 400;
        }

        .stats-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: var(--shadow);
            border-left: 4px solid var(--primary-color);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .stat-card:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .stat-card i {
            font-size: 2rem;
            color: var(--primary-color);
            margin-bottom: 1rem;
        }

        .stat-number {
            font-size: 2rem;
            font-weight: 700;
            color: var(--dark-color);
        }

        .stat-label {
            color: #6b7280;
            font-weight: 500;
        }

        .content-card {
            background: white;
            border-radius: 12px;
            box-shadow: var(--shadow);
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: white;
            padding: 1.5rem 2rem;
            border: none;
        }

        .card-header h5 {
            margin: 0;
            font-weight: 600;
            font-size: 1.25rem;
        }

        .add-button {
            background: linear-gradient(135deg, var(--success-color) 0%, #059669 100%);
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 8px;
            color: white;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .add-button:hover {
            transform: translateY(-1px);
            box-shadow: var(--shadow-lg);
            color: white;
        }

        .table-container {
            overflow-x: auto;
        }

        .modern-table {
            width: 100%;
            margin: 0;
            border: none;
        }

        .modern-table thead th {
            background: #f8fafc;
            border: none;
            padding: 1rem;
            font-weight: 600;
            color: var(--dark-color);
            text-transform: uppercase;
            font-size: 0.75rem;
            letter-spacing: 0.05em;
            border-bottom: 2px solid var(--border-color);
        }

        .modern-table tbody td {
            padding: 1rem;
            border: none;
            border-bottom: 1px solid var(--border-color);
            vertical-align: middle;
        }

        .modern-table tbody tr:hover {
            background: #f8fafc;
        }

        .news-image {
            width: 80px;
            height: 60px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: var(--shadow);
        }

        .news-title {
            font-weight: 600;
            color: var(--dark-color);
            max-width: 200px;
            line-height: 1.4;
        }

        .news-content {
            color: #6b7280;
            max-width: 250px;
            line-height: 1.5;
        }

        .badge {
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .badge-author {
            background: #ddd6fe;
            color: #5b21b6;
        }

        .badge-category {
            background: #dcfce7;
            color: #166534;
        }

        .action-buttons {
            display: flex;
            gap: 0.5rem;
        }

        .btn-action {
            padding: 0.5rem 1rem;
            border-radius: 6px;
            border: none;
            font-size: 0.75rem;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            gap: 0.25rem;
        }

        .btn-edit {
            background: var(--warning-color);
            color: white;
        }

        .btn-edit:hover {
            background: #d97706;
            color: white;
            transform: translateY(-1px);
        }

        .btn-delete {
            background: var(--danger-color);
            color: white;
        }

        .btn-delete:hover {
            background: #dc2626;
            color: white;
            transform: translateY(-1px);
        }

        .pagination-container {
            padding: 2rem;
            display: flex;
            justify-content: center;
        }

        .pagination {
            display: flex;
            gap: 0.5rem;
            margin: 0;
            font-size: 1rem;
        }

        .pagination li {
            list-style: none;
        }

        .pagination a,
        .pagination span {
            padding: 0.5rem 1rem;
            border-radius: 8px;
            background-color: var(--light-color);
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            transition: background-color 0.2s;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .pagination a:hover,
        .pagination .active {
            background-color: var(--primary-color);
            color: white;
        }

        .pagination .disabled {
            color: #d1d5db;
        }

        .pagination .disabled a {
            background-color: var(--light-color);
        }

        .pagination .prev,
        .pagination .next {
            font-weight: bold;
        }

        .pagination .prev:hover,
        .pagination .next:hover {
            background-color: var(--primary-color);
            color: white;
        }

        .pagination .page-item {
            margin: 0;
        }

        .pagination .page-link {
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="dashboard-container">
        <!-- Header -->
        <div class="dashboard-header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8">
                        <h1 class="dashboard-title">
                            <i class="fas fa-newspaper text-primary me-3"></i>
                            Dashboard Berita
                        </h1>
                        <p class="dashboard-subtitle">Selamat Datang</p>
                    </div>
                    <div class="col-md-4 text-md-end">
                        <a href="/dashboard/create" class="add-button">
                            <i class="fas fa-plus"></i>
                            Tambah Berita
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <!-- Alert Success -->
            @if (session('success'))
                <div class="alert alert-success">
                    <i class="fas fa-check-circle me-2"></i>
                    {{ session('success') }}
                </div>
            @endif


            <!-- Main Content Card -->
            <div class="content-card">
                <div class="card-header">
                    <div class="d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">
                            <i class="fas fa-list me-2"></i>
                            Daftar Berita
                        </h5>
                        <small>
                            @if (method_exists($posts, 'total'))
                                Menampilkan {{ $posts->firstItem() }} - {{ $posts->lastItem() }} dari
                                {{ $posts->total() }} berita
                            @else
                                Total {{ $posts->count() }} berita
                            @endif
                        </small>
                    </div>
                </div>

                <div class="table-container">
                    <table class="modern-table">
                        <thead>
                            <tr>
                                <th>Gambar</th>
                                <th>Judul</th>
                                <th>Konten</th>
                                <th>Author</th>
                                <th>Kategori</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($posts as $post)
                                <tr>
                                    <td>
                                        @if ($post->image)
                                            <img src="{{ asset('storage/' . $post->image) }}" class="news-image"
                                                alt="News Image">
                                        @else
                                            <div
                                                class="news-image bg-light d-flex align-items-center justify-content-center">
                                                <i class="fas fa-image text-muted"></i>
                                            </div>
                                        @endif
                                    </td>
                                    <td>
                                        <div class="news-title">{{ $post->title }}</div>
                                    </td>
                                    <td>
                                        <div class="news-content">
                                            {{ \Illuminate\Support\Str::limit($post->body, 100) }}
                                        </div>
                                    </td>
                                    <td>
                                        <span class="badge badge-author">
                                            <i class="fas fa-user me-1"></i>
                                            {{ $post->author->name ?? '-' }}
                                        </span>
                                    </td>
                                    <td>
                                        <span class="badge badge-category">
                                            <i class="fas fa-tag me-1"></i>
                                            {{ $post->category->name ?? '-' }}
                                        </span>
                                    </td>
                                    <td>
                                        <div class="action-buttons d-flex gap-2">
                                            <a href="/dashboard/edit/{{ $post->id }}" class="btn-action btn-edit">
                                                <i class="fas fa-edit"></i>
                                                Edit
                                            </a>
                                            <a href="/dashboard/delete/{{ $post->id }}?"
                                                onclick="return confirm('Yakin ingin menghapus berita ini?')"
                                                class="btn-action btn-delete">
                                                <i class="fas fa-trash"></i>
                                                Hapus
                                            </a>
                                        </div>
                                    </td>

                                </tr>
                            @empty
                                <tr>
                                    <td colspan="7" class="text-center py-5">
                                        <i class="fas fa-inbox fa-3x text-muted mb-3"></i>
                                        <div class="h5 text-muted">Belum ada berita</div>
                                        <p class="text-muted">Mulai dengan menambahkan berita pertama Anda</p>
                                        <a href="/dashboard/create" class="add-button">
                                            <i class="fas fa-plus"></i>
                                            Tambah Berita Pertama
                                        </a>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                <!-- Pagination -->
                @if (method_exists($posts, 'links'))
                    <div class="pagination-container">
                        <ul class="pagination">
                            <!-- Previous Page -->
                            <li class="page-item {{ $posts->onFirstPage() ? 'disabled' : '' }}">
                                <a class="page-link prev" href="{{ $posts->previousPageUrl() }}" tabindex="-1">
                                    <i class="fas fa-chevron-left"></i> Previous
                                </a>
                            </li>

                            <!-- Page Numbers -->
                            @foreach ($posts->links()->elements[0] as $page => $url)
                                <li class="page-item {{ $posts->currentPage() == $page ? 'active' : '' }}">
                                    <a class="page-link" href="{{ $url }}">{{ $page }}</a>
                                </li>
                            @endforeach

                            <!-- Next Page -->
                            <li class="page-item {{ $posts->hasMorePages() ? '' : 'disabled' }}">
                                <a class="page-link next" href="{{ $posts->nextPageUrl() }}">
                                    Next <i class="fas fa-chevron-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                @endif
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Auto-hide alerts after 5 seconds
        document.addEventListener('DOMContentLoaded', function() {
            const alerts = document.querySelectorAll('.alert');
            alerts.forEach(alert => {
                setTimeout(() => {
                    alert.style.transition = 'opacity 0.5s';
                    alert.style.opacity = '0';
                    setTimeout(() => alert.remove(), 500);
                }, 5000);
            });
        });

        // Search functionality
        const searchInput = document.querySelector('.search-input');
        if (searchInput) {
            searchInput.addEventListener('input', function() {
                // Add your search logic here
                console.log('Search:', this.value);
            });
        }
    </script>
</body>

</html>
