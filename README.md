# Interior Designer Web Page

A modern, responsive web page for an interior designer built with HTML, CSS, and Node.js.

## Features

- **Responsive Design**: Works seamlessly on desktop, tablet, and mobile devices
- **Modern UI**: Clean, elegant design with professional styling
- **Contact Form**: Functional contact form with server-side processing
- **Portfolio Gallery**: Showcase of interior design projects
- **Services Section**: Highlighting different design services offered
- **Smooth Navigation**: Easy-to-use navigation with smooth scrolling

## Technologies Used

- **Frontend**: HTML5, CSS3
- **Backend**: Node.js, Express.js
- **Styling**: Custom CSS with responsive design
- **Images**: Unsplash for high-quality interior design photos

## Project Structure

```
Node_web/
├── index.html          # Main HTML page
├── styles.css          # CSS styling
├── server.js           # Node.js Express server
├── package.json        # Project dependencies
└── README.md           # Project documentation
```

## Installation

1. **Clone or download** the project files to your local machine

2. **Install dependencies** by running:
   ```bash
   npm install
   ```

3. **Start the server** by running:
   ```bash
   npm start
   ```

4. **Open your browser** and navigate to:
   ```
   http://localhost:3000
   ```

## Usage

### Running the Application

- The server runs on port 3000 by default
- You can change the port by setting the `PORT` environment variable
- The application serves static files and handles form submissions

### Contact Form

- The contact form is fully functional
- Submissions are logged to the console
- Form data includes: name, email, and message

### Customization

- **Content**: Edit `index.html` to change text content
- **Styling**: Modify `styles.css` to adjust colors, fonts, and layout
- **Images**: Replace image URLs in the HTML with your own portfolio images
- **Services**: Add or modify services in the services section

## Features in Detail

### Hero Section
- Eye-catching background image
- Call-to-action button
- Professional tagline

### About Section
- Company description
- Professional experience highlights

### Services Section
- Residential Design
- Commercial Design
- Renovation Services

### Portfolio Gallery
- Showcase of completed projects
- Responsive image grid
- Professional interior design photos

### Contact Form
- Name, email, and message fields
- Form validation
- Server-side processing

## Browser Compatibility

- Chrome (recommended)
- Firefox
- Safari
- Edge
- Mobile browsers

## Development

To modify the application:

1. **Frontend Changes**: Edit `index.html` and `styles.css`
2. **Backend Changes**: Modify `server.js` for server logic
3. **Dependencies**: Update `package.json` for new packages

## Deployment

This application can be deployed to various platforms:

- **Heroku**: Add a `Procfile` with `web: node server.js`
- **Vercel**: Configure for Node.js deployment
- **Railway**: Direct deployment from GitHub
- **DigitalOcean**: Deploy to a VPS

## License

This project is open source and available under the [MIT License](LICENSE).

## Contributing

Feel free to submit issues and enhancement requests!

---

**Created with ❤️ using Node.js and Express** 