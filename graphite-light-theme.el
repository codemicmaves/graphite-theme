;;; graphite-light.el --- Simple and elegant light theme

;; Copyright (c) 2022 Michael Maves

;; Author: Michael Maves <(concat "micmaves" at-sign "outlook.com")>
;; URL: https://github.com/codemicmaves/graphite-theme
;; Version: 20220414.1
;; Keywords: color theme

;; This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.

;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU General Public License for more details.

;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:
;; A simple and elegant light theme
;; ... can be paired with the Graphite dark theme

;;; Code:

;;; Options

;;; Theme faces

(defgroup graphite-theme nil
  "Group for graphite theme variables"
  :group 'graphite)

(defvar graphite/color-green    "#0B7764")
(defvar graphite/color-yellow   "#FAA632")
(defvar graphite/color-red      "#E42F44")

(defface graphite/org-todo
  `((t :foreground ,graphite/color-red))
  "Org mode face for actionable todo keywords."
  :group 'graphite-theme)

(defface graphite/org-hold
  `((t :foreground ,graphite/color-yellow))
   "Org mode face for keywords on hold."
   :group 'graphite-theme)

(defface graphite/org-done
  `((t :foreground ,graphite/color-green))
  "Org mode face for keywords that are done."
  :group 'graphite-theme)

(deftheme graphite-light
  "Theme with a light background")

(let ((class '((class color) (min-colors 89)))
      ;; Graphite colors
      (graphite-bg          "#F9FBFF")
      (graphite-fg          "#222226")
      (graphite-fg-inactive "#4B4E53")
      (graphite-region      "#E3EBF8")
      (graphite-highlight   "#E3EBF8")

      (graphite-violet   "#A14D9D")
      (graphite-indigo   "#484F9F")
      (graphite-blue     "#056AB5")
      (graphite-green    "#0B7764")
      (graphite-yellow   "#FFC220")
      (graphite-orange   "#F47933")
      (graphite-red      "#E42F44")
   
      (graphite-comment  "#8E9498")
      (graphite-builtin  "#1770B8")
      (graphite-keyword  "#913D8D")
      (graphite-string   "#146b60")
      (graphite-type     "#0077A2")
      (graphite-constant "#BC454F")
      (graphite-warning  "#F47933")

      (graphite-link         "#126595")
      (graphite-link-visited "#91474A")

      (graphite-header-bg        "#E3EBF8")
      (graphite-header-bg-alt    "#CAD1D8")
      (graphite-header-bg-alt-2  "#ACB1B8")
      (graphite-diff-removed     "#F6BAB3")
      (graphite-diff-added       "#B5D1C8")
      (graphite-diff-refine      "#90BAAE"))
  
  (custom-theme-set-faces
   'graphite-light
   ;; Basic colors
   `(default   ((,class (:background ,graphite-bg :foreground ,graphite-fg))))
   `(fringe    ((,class (:background ,graphite-bg :foreground ,graphite-fg))))
   `(cursor    ((,class (:background ,graphite-fg-inactive :foreground ,graphite-bg))))
   `(region    ((,class (:background ,graphite-region))))
   `(shadow    ((,class (:foreground ,graphite-comment))))
   `(isearch   ((,class (:background ,graphite-yellow))))

   ;; Syntax/Font Lock
   `(font-lock-comment-face        ((,class (:inherit shadow))))
   `(font-lock-function-name-face  ((,class (:foreground ,graphite-blue))))
   `(font-lock-keyword-face        ((,class (:foreground ,graphite-keyword))))
   `(font-lock-builtin-face        ((,class (:foreground ,graphite-builtin))))
   `(font-lock-type-face           ((,class (:foreground ,graphite-type))))   
   `(font-lock-string-face         ((,class (:foreground ,graphite-string))))
   `(font-lock-doc-face            ((,class (:foreground ,graphite-string))))   
   `(font-lock-constant-face       ((,class (:foreground ,graphite-constant))))
   `(font-lock-warning-face        ((,class (:foreground ,graphite-warning :weight semi-bold))))
   `(sh-quoted-exec                ((,class (:foreground ,graphite-violet))))
   
   ;; Mode Line
   `(mode-line          ((,class (:background ,graphite-bg :foreground ,graphite-fg :overline ,graphite-fg))))
   `(mode-line-inactive ((,class (:background ,graphite-bg :foreground ,graphite-fg-inactive :overline ,graphite-fg-inactive))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,graphite-blue :weight bold))))
   `(highlight         ((,class (:background ,graphite-highlight))))
   `(lazy-highlight    ((,class (:background ,graphite-highlight))))
   `(error             ((,class (:foreground ,graphite-red))))
   `(warning           ((,class (:foreground ,graphite-orange :weight bold))))
   `(success           ((,class (:foreground ,graphite-green))))

   ;; Tab-bar
   `(tab-bar              ((,class (:background ,graphite-bg))))
   `(tab-bar-tab          ((,class (:background ,graphite-bg :underline ,graphite-fg :box (:line-width 4 :color ,graphite-bg) :weight bold))))
   `(tab-bar-tab-inactive ((,class (:background ,graphite-bg :box (:line-width 4 :color ,graphite-bg)))))

   ;; Elements
   `(link ((,class (:foreground ,graphite-link :underline ,graphite-link))))
   `(link-visited ((,class (:foreground ,graphite-link :underline ,graphite-link))))
   `(button       ((,class (:foreground ,graphite-link :underline ,graphite-link))))

   ;; Diff
   `(diff-header        ((,class (:background ,graphite-header-bg))))
   `(diff-hunk-header   ((,class (:background ,graphite-header-bg-alt))))
   `(diff-file-header   ((,class (:background ,graphite-header-bg-alt-2))))
   `(diff-removed       ((,class (:background ,graphite-diff-removed))))
   `(diff-added         ((,class (:background ,graphite-diff-added))))
   `(diff-refine-added  ((,class (:background ,graphite-diff-refine))))

   ;; Org mode
   `(org-level-1 ((,class (:inherit default :height 1.3 :weight bold))))
   `(org-level-2 ((,class (:inherit default :height 1.2 :weight bold))))
   `(org-level-3 ((,class (:inherit default :height 1.1 :weight bold))))
   `(org-level-4 ((,class (:inherit default :weight bold))))
   `(org-level-5 ((,class (:inherit default :weight bold))))
   `(org-level-6 ((,class (:inherit default :weight bold))))
   `(org-level-7 ((,class (:inherit default :weight bold))))
   `(org-level-8 ((,class (:inherit default :weight bold))))
   `(org-headline-done   ((,class (:foreground ,graphite-fg-inactive))))
   `(org-checkbox        ((,class (:foreground ,graphite-fg-inactive))))
   `(org-special-keyword ((,class (:inherit default :foreground ,graphite-red))))
   `(org-date            ((,class (:inherit default :foreground ,graphite-violet)))))
   
   ;; Custom variables
   (custom-theme-set-variables
    'graphite-light
    '(x-underline-at-descent-line t)
    '(line-spacing 0.12))
   ;;End
   )

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'graphite-light)

;;; graphite-light.el ends here
