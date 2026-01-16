<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cindy Hayford - Recompete Success Coach</title>
    <style>
        /* --- CSS Reset & Variables --- */
        :root {
            --cwc-rust: #D2492A; /* Approximate CWC Brand Color */
            --cwc-navy: #00263E; /* Approximate CWC Brand Color */
            --text-dark: #333333;
            --text-light: #666666;
            --bg-color: #f4f4f9;
            --white: #ffffff;
            --transition: all 0.3s ease;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-dark);
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* --- Main Card Container --- */
        .profile-card {
            background: var(--white);
            width: 100%;
            max-width: 800px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            overflow: hidden;
            display: flex;
            flex-direction: row;
        }

        /* --- Visual Side (Left) --- */
        .profile-visual {
            background-color: var(--cwc-navy);
            width: 35%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 40px 20px;
            text-align: center;
            color: var(--white);
        }

        .profile-img-container {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 4px solid var(--cwc-rust);
            overflow: hidden;
            margin-bottom: 20px;
            background-color: #ccc; /* Placeholder color */
        }

        .profile-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .cwc-logo-text {
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
            font-size: 0.9rem;
            margin-top: auto;
            opacity: 0.8;
        }

        /* --- Content Side (Right) --- */
        .profile-content {
            width: 65%;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        h1 {
            font-size: 2rem;
            color: var(--cwc-navy);
            margin-bottom: 5px;
        }

        h2 {
            font-size: 1.1rem;
            color: var(--cwc-rust);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 20px;
        }

        .divider {
            height: 3px;
            width: 60px;
            background-color: var(--cwc-rust);
            margin-bottom: 20px;
        }

        p.bio {
            color: var(--text-light);
            margin-bottom: 25px;
            font-size: 0.95rem;
        }

        /* --- Contact Details Grid --- */
        .contact-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin-bottom: 25px;
        }

        .contact-item {
            display: flex;
            flex-direction: column;
        }

        .contact-label {
            font-size: 0.75rem;
            font-weight: 700;
            color: var(--cwc-navy);
            text-transform: uppercase;
        }

        .contact-value {
            font-size: 0.95rem;
            color: var(--text-dark);
        }

        /* --- Interactive Elements --- */
        .action-btn {
            background-color: var(--cwc-navy);
            color: var(--white);
            border: none;
            padding: 12px 24px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            width: fit-content;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .action-btn:hover {
            background-color: var(--cwc-rust);
            transform: translateY(-2px);
        }

        .toast {
            visibility: hidden;
            min-width: 250px;
            background-color: #333;
            color: #fff;
            text-align: center;
            border-radius: 4px;
            padding: 10px;
            position: fixed;
            z-index: 1;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 0.9rem;
            opacity: 0;
            transition: opacity 0.5s, bottom 0.5s;
        }

        .toast.show {
            visibility: visible;
            opacity: 1;
            bottom: 50px;
        }

        /* --- Mobile Responsiveness --- */
        @media (max-width: 768px) {
            .profile-card {
                flex-direction: column;
                max-width: 400px;
            }
            .profile-visual, .profile-content {
                width: 100%;
            }
            .profile-visual {
                padding: 30px;
            }
            .contact-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <div class="profile-card">
        <div class="profile-visual">
            <div class="profile-img-container">
                <img src="your-photo.jpg" alt="Cindy Hayford" class="profile-img" id="profileImage">
            </div>
            <div class="cwc-logo-text">Central Wyoming College</div>
        </div>

        <section class="profile-content">
            <header>
                <h1>Cindy Hayford</h1>
                <h2>Recompete Success Coach</h2>
                <div class="divider"></div>
            </header>

            <article>
                <p class="bio">
                    Dedicated to empowering students and strengthening the workforce pipeline at Central Wyoming College. As a Recompete Success Coach, I specialize in guiding individuals through educational pathways that lead to high-demand careers. I provide personalized support to help students overcome barriers, navigate college resources, and achieve sustainable success in the local economy.
                </p>

                <div class="contact-grid">
                    <div class="contact-item">
                        <span class="contact-label">Email</span>
                        <span class="contact-value" id="emailText">chayford@cwc.edu</span>
                    </div>
                    <div class="contact-item">
                        <span class="contact-label">Office Location</span>
                        <span class="contact-value">4F FBW (Main Hall)</span>
                    </div>
                    <div class="contact-item">
                        <span class="contact-label">Institution</span>
                        <span class="contact-value">Central Wyoming College</span>
                    </div>
                </div>

                <button class="action-btn" onclick="copyEmail()">
                    <span id="btnText">Copy Email Address</span>
                </button>
            </article>
        </section>
    </div>

    <div id="toast" class="toast">Email copied to clipboard!</div>

    <script>
        /**
         * Function to copy email to clipboard
         * Provides visual feedback via a toast notification
         */
        function copyEmail() {
            const email = document.getElementById('emailText').innerText;
            
            navigator.clipboard.writeText(email).then(() => {
                showToast();
                
                // Optional: Change button text temporarily
                const btnText = document.getElementById('btnText');
                const originalText = btnText.innerText;
                btnText.innerText = "Copied!";
                
                setTimeout(() => {
                    btnText.innerText = originalText;
                }, 2000);
            }).catch(err => {
                console.error('Failed to copy: ', err);
            });
        }

        function showToast() {
            const toast = document.getElementById("toast");
            toast.className = "toast show";
            setTimeout(function(){ 
                toast.className = toast.className.replace("show", ""); 
            }, 3000);
        }
    </script>
</body>
</html>
