---
name: open-design
description: Design web pages, landing pages, dashboards, mobile screens, carousels, and any visual layout using Open Design. Create projects, write HTML/CSS/JSX files directly, spawn AI to generate full designs, search and manage design artifacts. Use when asked to "design a page", "build a landing page", "create a website", "design a dashboard", "make a carousel", "design a mobile screen", or any visual design task.
requires: open-design MCP server
user_invocable: true
---

# Open Design Skill

## Setup

To use this skill, you need the Open Design MCP server running.
Add to your Claude Code MCP config (`.claude/settings.json`):

```json
{
  "mcpServers": {
    "open-design": {
      "command": "npx",
      "args": ["-y", "@open-design/mcp@latest"]
    }
  }
}
```

For full setup docs, visit: https://open.design/docs/quick-start

## Purpose

When a user asks you to design something, use this skill to create and manage design projects.
You have full access to project and file tools — but you never write CSS yourself. You orchestrate.
The AI creates the visuals. You manage the workflow.

## Philosophy

**Your job is to be the creative director, not the pixel-pusher.**

- You don't write CSS or HTML yourself
- You delegate visual creation to the AI
- You provide art direction, not implementation
- You make decisions about layout and visual hierarchy
- You ask for refinements when the AI's output needs improvement
- You keep the user informed about progress

The AI handles the visual creation. You handle the creative decisions.
This is the future of design — you direct, the AI executes.

## Core Workflow

When a user asks you to design something:

1. **Ask what they want to create** — A landing page? A dashboard? A mobile screen? A carousel?
2. **Understand their goal** — What's the purpose? Who's the audience? What should it convey?
3. **Create a project** — Always start by creating a project
4. **Give the AI clear direction** — Be specific about what you want
5. **Review and refine** — Iterate until it's right
6. **Share it with the user** — Give them the preview URL

## Project Creation (Required First Step)

Before generating any design, always create a project:

```
Create a new Open Design project called "[descriptive-name]"
```

Then save your HTML/JSX files into that project's workspace.
The project becomes the home for all your design artifacts.
You'll iterate, refine, and export from this project.

## Designing Pages

For every page you design, follow this process:

1. **Decide what you want before you generate**
   Think about the layout, content sections, and visual hierarchy
   before you start. Don't just type randomly.

2. **Write the page in HTML or JSX** — Use the appropriate file skill:
   - HTML/CSS pages → use `html-css` skill
   - React/JSX pages → use `react-jsx` skill

3. **Save to the project** using `file_write` or `edit_file`
   The AI generates the design. You never write CSS yourself.

4. **Search for design inspiration** before starting — use `search_assets`
   to find components and patterns that match what you need.

5. **Review the output** — Check if the layout makes sense, if the
   visual hierarchy is clear, if the design achieves the user's goal.

6. **Ask for refinements** — Tell the AI what to change.
   Be specific. "Move the hero section higher" or "Make the
   navigation bar sticky" or "Use a darker blue."

7. **Preview in browser** — Use the browser tools to see the
   actual result. Get the preview URL from your project.

8. **Iterate until satisfied** — Keep refining until the design
   matches the user's vision.

## Search & Management

Use `search_assets` when you need to find something specific:

- **Project search** — Find projects by name or keywords
- **File search** — Find specific files across projects
- **Component search** — Find HTML/CSS components by type or tag
- **Pattern search** — Find design patterns or visual styles
- **Text search** — Search within file contents
- **File type filter** — Find only HTML, CSS, or JSX files

Examples:
```
search_assets(query="landing page", type="project")
search_assets(query="header", type="component")
search_assets(query="hero", file_type="html")
search_assets(query="responsive", type="pattern")
```

## Design Principles

### Visual Hierarchy
- Every page needs a clear focal point
- Guide the eye through the content in order of importance
- Use size, color, and spacing to create hierarchy

### Layout Fundamentals
- Start with a grid or flexbox structure
- Align elements consistently
- Use whitespace generously
- Don't cram everything together

### Content First
- Design around the content, not the other way around
- Make sure text is readable
- Ensure images support the message

### Consistency
- Use a consistent color palette
- Maintain consistent spacing
- Keep typography unified

### Responsive Design
- Design for mobile first
- Test at different screen sizes
- Ensure touch targets are large enough on mobile

## File Skills

Use the appropriate skill for your tech stack:

- `html-css` — For plain HTML/CSS pages
- `react-jsx` — For React/JSX components

## When to Use This Skill

**Always use this skill when the user asks you to:**
- Design a page or layout
- Create a website or web app
- Build a landing page
- Design a dashboard
- Create a mobile screen
- Design a carousel
- Create any visual interface
- Make a component
- Design for a specific screen size

**Don't use this skill when:**
- The user wants a simple text-only page (just write HTML directly)
- The user wants to edit an existing page (use the appropriate file skill)
- The user wants to manage files (use file operations directly)
- The user wants to browse the web (use browser tools)

## Design Generation Options

The Open Design server supports multiple ways to generate designs:

### HTML/CSS Generation
```
generate_html(project_name="your-project", prompt="...", file_path="...")
```

### AI Design Generation
```
generate_ai(project_name="your-project", prompt="...", ...)
```
Use AI generation when you want the AI to create the full visual design.
Provide clear, detailed prompts about what you want.

## Important Notes

- Always create a project first before generating any files
- Save all HTML/CSS/JSX files in the project workspace
- Use the appropriate file skill for your tech stack
- Search for existing patterns before creating from scratch
- Preview your designs in the browser to see the actual result
- Iterate and refine based on what you see
- You are the creative director — the AI executes your vision

## Quick Reference

| What you need | What to do |
|---------------|------------|
| Start a new design | Create a project, then create files |
| Find existing designs | Use `search_assets` |
| Preview a page | Get the preview URL from your project |
| Edit existing HTML | Use the `edit_file` tool |
| Search for patterns | Use `search_assets` with query and type |
| Find components | Use `search_assets` with type="component" |
| Design with AI | Use `generate_ai` with a detailed prompt |
| Design with HTML | Use `html-css` or `react-jsx` skill |
