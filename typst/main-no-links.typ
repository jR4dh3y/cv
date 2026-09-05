// Local modern-cv: name + tagline left, contacts right
#import "vendor/modern-cv/lib.typ": *
#import "@preview/fontawesome:0.6.0": fa-version

// Use Font Awesome 6 (fonts shipped under ./fonts)
#fa-version("6")

// All links underlined so they don't look like plain text
#show link: underline


// Keep the primary name bold while treating the suffix and stack as metadata.
#let entry-title(name, detail, separator: "·") = [
  #strong[#name] #text(weight: "regular")[#separator #detail]
]

#let project-title(name, tech) = [
  #strong[#name] #text(size: 9.5pt, weight: "regular", fill: rgb("#555555"))[| #tech]
]

#show: resume.with(
  author: (
    firstname: "Radhey",
    lastname: "Kalra",
    email: "radheykalra901@gmail.com",
    homepage: "https://radhey.dev",
    phone: "+91 6005104654",
    github: "jr4dh3y",
    linkedin: "radheykalra",
    // Flowing one/two-liner under the accent rule
    summary: "Full-stack developer and open source contributor focused on Linux systems programming, self-hosted infrastructure, and Audio/ML pipelines.",
    positions: (
      "Open Source Contributor",
      "Full-Stack Developer",
    ),
  ),
  keywords: ("Open Source", "Full-Stack", "Linux", "ML"),
  description: "Resume of Radhey Kalra - open source contributor and full-stack developer",
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  show-address-icon: false,
  show-contact-icons: false,
  show-header-rule: true,
  show-section-rules: true,
  paper-size: "us-letter",
  font: "Source Sans 3",
  header-font: "Roboto",
)

= Education

#resume-entry(
  title: "Model Institute of Engineering and Technology",
  location: "Jammu and Kashmir, India",
  date: "Aug 2023 - May 2027",
  description: "Bachelor of Technology in Computer Science and Engineering",
)

= Open Source Experience

#resume-entry(
  title: entry-title("Linux Kernel (hp-wmi)", "Platform-driver-x86 subsystem"),

  date: "",
  description: "",
)

#resume-item[
  - Added HP Victus 15-fb0xxx (board 8A3D) fan-control support to the upstream Linux hp-wmi driver by reusing its existing Victus WMI control path.
  - Refactored hp-wmi to select thermal-profile and fan-control features from board-specific data instead of hardcoded model checks.
  - Tested dual-channel PWM fan control on an HP Victus 16-s0xxx and provided the Tested-by sign-off for the upstream commit.
]

#resume-entry(
  title: entry-title("Tokscale", "AI coding token analytics"),

  date: "",
  description: "",
)

#resume-item[
  - Added first-class standalone Cline CLI and Kimchi Coding session ingestion across parsing, scanning, CLI/TUI filters, frontend metadata, and documentation, preserving token, cost, model, workspace, and cache data.
  - Corrected Grok usage accounting and model attribution across parent/child agent sessions with process-generation scoping, deduplication, cache-safe behavior, and dual-source discovery; merged after passing 1,300+ core tests.
  - Contributed to a developer analytics project with 4.8K+ GitHub stars and 390+ forks.
]

#resume-entry(
  title: entry-title("ly", "Lightweight Linux/BSD display manager"),

  date: "",
  description: "",
)

#resume-item[
  - Proposed and implemented an optional big-clock digit outline for ly, improving readability over animated backgrounds while preserving the default appearance; tested with a ReleaseSafe Zig build and a live greeter configuration.
  - Contributed to a project with 7.4K+ GitHub stars and 350 forks on its GitHub mirror.
]

= Projects

#resume-entry(
  title: project-title("BoxBox", "Go, TS, SvelteKit, Docker"),

  date: "Nov 2025 - Present",
  description: "Self-hosted file management",
)

#resume-item[
  - Made self-hosted file management practical on lightweight hardware with multi-mount browsing, chunked/resumable uploads, live job progress, media preview/streaming, and in-browser code editing, all in a ~31MB single binary.
  - Eliminated deployment friction with an embedded UI and a one-command container image for homelab and NAS setups.
  - Reached 300+ GitHub stars and 13K+ downloads, confirming demand for a lighter alternative.
]

#resume-entry(
  title: project-title("Fast Blob Storage (FBS)", "Go, S3, Docker, SQLite"),

  date: "Apr 2026 - Present",
  description: "S3-compatible object storage",
)

#resume-item[
  - Led a team of 5 contributors to design and build a single-node object store, coordinating API, storage, dashboard, and deployment work across a single-binary and containerized release.
  - Matched MinIO's core API (SigV4 + bearer auth, multipart uploads, management API) at 12–14× less memory using zero-copy sendfile() egress instead of distributed-cluster overhead.
  - Grew to 50+ GitHub stars, proving lightweight object storage can compete without sacrificing performance or compatibility.
]

#resume-entry(
  title: project-title("U-Net Audio Filter", "Python, PyTorch, CUDA"),

  date: "Jul 2025 - Present",
  description: "Audio enhancement / background noise removal",
)

#resume-item[
  - Improving audio denoising quality beyond existing open-source baselines with a custom U-Net architecture and an audio preprocessing pipeline.
]

#resume-entry(
  title: project-title("QckPages", "SvelteKit, Convex, Razorpay, FBS"),

  date: "May 2026",
  description: "End-to-end HTML page publishing platform",
)

#resume-item[
  - Removed the infrastructure burden from publishing HTML pages with authentication, billing, and object storage so anyone can upload and get a live URL with no server management.
  - Full self-serve product flow from signup and plan checkout to one-click publish and hosted page delivery.
]



// #resume-entry(
//   title: "Additional Projects",
//   location: "",
//   date: "",
// )

// #resume-item[
//   - Victus Control - Vala/GTK4 app to monitor, control fan speed, and power profiles for HP laptops
//   - rsclip - Rust/Wayland clipboard manager with OCR and secrets management
//   - Dots-Niri - one-command NiriWM rice for Arch-based installs
//   - HowTo - tutorials for practical hardware/software walkthroughs built with Astro
//   - Pico32 - C++/PlatformIO serial TUI for ESP32 Wi-Fi/BT pentesting
//   - TL;DR - Electron app summarizing WhatsApp Group chats via OpenRouter models
//   - Hotel Booking - Svelte/Express/MySQL hotel booking platform with auth and admin flow
//   - Tenant Manager - React Native app for tenant management and electricity tracking
// ]


#pagebreak()

= Skills

#resume-skill-item(
  "Languages",
  (
    "Python",
    "JavaScript/TypeScript",
    "Go",
    "C/C++",
    "Rust",
    "SQL",
    "Bash",
    "PowerShell",
    "Vala",
  ),
)
#resume-skill-item(
  "Frameworks",
  (
    "SvelteKit",
    "React",
    "Astro",
    "Tailwind CSS",
    "React Native",
    "Bun",
  ),
)
#resume-skill-item(
  "Tools",
  (
    "Git",
    "Docker",
    "CI/CD",
    "Cloudflare",
    "Vercel",
    "Kubernetes",
    "Terraform",
  ),
)
#resume-skill-item(
  "Data & Cloud",
  (
    "Convex",
    "PostgreSQL",
    "MySQL",
    "AWS",
    "GCP",
  ),
)
#resume-skill-item(
  "Domains",
  (
    "Full-Stack Development",
    "Linux Servers",
    "Self-Hosting",
    "Networking",
    "Audio Processing",
  ),
)
#block(below: 0.65em)

= Positions of Responsibility

#resume-entry(
  title: [#strong[Cloud & DevOps Lead]],
  location: "MIET, Jammu",
  date: "Aug 2025 - Present",
  description: "Google Developer Groups on Campus · AWS Cloud Club",
)

#resume-item[
  - Lead cloud and DevOps initiatives across Google Developer Groups on Campus and AWS Cloud Club through workshops, technical sessions, and collaborative projects on GCP, AWS, containerization, and infrastructure automation.
  - Ran Google Cloud sessions for 100+ students and built a tutorial platform with 20+ lab walkthroughs, notes, and videos for Google Cloud Study Jam
]

= Achievements

#resume-entry(
  title: entry-title("IDE Bootcamp Edition 3", "Team Leader, 2nd Place", separator: "-"),
  location: "GNDEC, Ludhiana",
  date: "Apr 2026",
  description: "AICTE / MoE Innovation Cell · Wadhwani Foundation",
)

#resume-item[
  - Led a team to 2nd Place building an AI-powered SaaS product for automated presentation generation from user-uploaded templates and documents with lower cost and no hallucinations.
]

#resume-entry(
  title: entry-title("IDE Bootcamp Edition 2", "Team Leader", separator: "-"),
  location: "IIT Jammu",
  date: "Feb 2025",
  description: "AICTE / MoE Innovation Cell · Wadhwani Foundation",
)

#resume-item[
  - Led a team in using design thinking and Lean Canvas to develop a sports matchmaking and social networking app.
]

#resume-entry(
  title: [#strong[Hackathon Team Leader]],
  location: "MIET, Jammu",
  date: "2024 & 2025",
  description: "Internal Hackathons & Smart India Hackathon",
)

#resume-item[
  - Led multidisciplinary teams to the top 9 in college both years through collaborative problem-solving and rapid prototyping.
]

= Certifications & Programs

#resume-certification(
  [Google Cybersecurity - Coursera],
  "",
)
#resume-certification(
  [Cisco Cybersecurity Operations Fundamentals - Coursera],
  "",
)
#resume-certification(
  [Palo Alto Networks Cybersecurity - Coursera],
  "",
)
#resume-certification(
  [EC-Council Cybersecurity Attack and Defense Fundamentals - Coursera],
  "",
)
#resume-certification(
  [NPTEL Ethical Hacking - IIT Kharagpur],
  "",
)
#resume-certification(
  [NPTEL Deep Learning - IIT Ropar],
  "",
)
#resume-certification(
  [IBM SkillsBuild: AI Agent Architect],
  "",
)
#resume-certification(
  [IDE Bootcamp (AICTE / MoE)],
  "",
)
