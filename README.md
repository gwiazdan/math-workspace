# 📚 Mathematical Exercise Solutions in Typst

> A collection of worked mathematical exercises from selected textbooks, written in Typst and published as PDF documents.

[![Typst](https://img.shields.io/badge/typeset%20with-Typst-239DAD.svg)](https://typst.app/)
[![PDF](https://img.shields.io/badge/output-PDF-B30B00.svg)](https://github.com/gwiazdan/math-workspace/releases)
[![Status](https://img.shields.io/badge/status-in%20development-orange.svg)](#status-projektu)

---

## 📌 Project Overview

This repository contains worked mathematical exercises from individual textbooks. Each book is maintained as a separate Typst document that can be compiled to PDF and published in the [Releases](https://github.com/gwiazdan/math-workspace/releases) section.

The repository currently includes:

- selected exercise solutions from *Book of Proof* by Richard Hammack,
- selected exercise solutions from *Linear Algebra Done Right* by Sheldon Axler,
- a shared Typst preamble containing definitions, mathematical formatting, and document settings.

## 🗂️ Repository Structure

```text
.
├── solutions/
│   ├── book-of-proof/
│   │   ├── main.typ
│   │   └── chapters/
│   └── linear-algebra-done-right/
│       ├── main.typ
│       └── chapters/
└── templates/
	└── preamble.typ
```

The `main.typ` files are the entry points for the individual books. They contain document metadata, a table of contents, and the included chapters. The shared `templates/preamble.typ` file stores settings used by all documents.

## 🛠️ Requirements

- [Typst](https://typst.app/) installed locally and available in `PATH`,
- an editor with Typst syntax support, such as [Visual Studio Code](https://code.visualstudio.com/).

## 🚀 Compiling to PDF

Run the commands from the repository root:

```bash
typst compile solutions/book-of-proof/main.typ book-of-proof.pdf
typst compile solutions/linear-algebra-done-right/main.typ linear-algebra-done-right.pdf
```

The generated PDF files will be placed in the repository root. You can also use watch mode while working on a document:

```bash
typst watch solutions/book-of-proof/main.typ book-of-proof.pdf
```

## 📦 Publishing

The completed PDF files are published as release assets in the [Releases](https://github.com/gwiazdan/math-workspace/releases) section.

## 📖 Contents

### *Book of Proof*

The solutions cover, among other topics, proof by contradiction, proofs of conditional statements, relations, functions, and cardinality.

### *Linear Algebra Done Right*

The collection begins with a chapter on vector spaces, including $R^n$ and $C^n$.

## 📈 Project Status

The materials are being developed gradually. More exercises and chapters will be added as work on the books progresses.

## 📄 License and Sources

The exercise statements and chapter structure originate from the respective textbooks. This repository contains original worked solutions for educational purposes. The rights to the original books belong to their authors and publishers.
