<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Berita - Admin Panel</title>
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

        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            color: var(--dark-color);
        }

        .container {
            max-width: 800px;
            background: var(--light-color);
            padding: 2rem;
            border-radius: 12px;
            box-shadow: var(--shadow);
            margin-top: 3rem;
        }

        .form-label {
            font-weight: 600;
            color: var(--dark-color);
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid var(--border-color);
            padding: 0.75rem 1rem;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.2);
        }

        .btn {
            border-radius: 8px;
            padding: 0.75rem 1.5rem;
            font-weight: 600;
            transition: all 0.2s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--success-color) 0%, #059669 100%);
            color: white;
            border: none;
        }

        .btn-primary:hover {
            background: #047857;
            color: white;
            transform: translateY(-1px);
        }

        .btn-secondary {
            background: var(--secondary-color);
            color: white;
            border: none;
        }

        .btn-secondary:hover {
            background: #9333ea;
            color: white;
            transform: translateY(-1px);
        }

        .header-title {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--dark-color);
            margin-bottom: 1rem;
        }

        .header-subtitle {
            color: #6b7280;
            font-weight: 400;
            margin-bottom: 1.5rem;
        }

        .back-link {
            font-size: 0.875rem;
            color: var(--primary-color);
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group:last-of-type {
            margin-bottom: 2rem;
        }

        .image-preview {
            max-width: 150px;
            max-height: 100px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: var(--shadow);
        }
    </style>
</head>

<body>
    <div class="container">
        <h2 class="header-title">
            <i class="fas fa-edit text-primary me-3"></i>
            Edit Berita
        </h2>
        <p class="header-subtitle">Perbarui berita yang sudah ada di bawah ini</p>

        <form action="/dashboard/update/{{ $post->id }}" method="POST" enctype="multipart/form-data">
            @csrf

            <div class="form-group">
                <label for="title" class="form-label">Judul Berita</label>
                <input type="text" name="title" id="title" class="form-control" value="{{ $post->title }}"
                    required>
            </div>

            <div class="form-group">
                <label for="slug" class="form-label">Slug</label>
                <input type="text" name="slug" id="slug" class="form-control" value="{{ $post->slug }}"
                    required>
            </div>

            <div class="form-group">
                <label for="body" class="form-label">Isi Berita</label>
                <textarea name="body" id="body" class="form-control" rows="5" required>{{ $post->body }}</textarea>
            </div>

            <div class="form-group">
                <label for="author_id" class="form-label">Author</label>
                <select name="author_id" id="author_id" class="form-control" required>
                    @foreach ($users as $user)
                        <option value="{{ $user->id }}" {{ $post->author_id == $user->id ? 'selected' : '' }}>
                            {{ $user->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label for="category_id" class="form-label">Kategori</label>
                <select name="category_id" id="category_id" class="form-control" required>
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}" {{ $post->category_id == $category->id ? 'selected' : '' }}>
                            {{ $category->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label for="image" class="form-label">Gambar Berita Saat Ini</label><br>
                @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" class="image-preview mb-2">
                @else
                    <p><i>Tidak ada gambar</i></p>
                @endif
                <input type="file" name="image" id="image" class="form-control">
            </div>

            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="/dashboard" class="btn btn-secondary back-link">Kembali</a>
            </div>
        </form>
    </div>
</body>

</html>
