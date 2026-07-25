import { Button } from "@/components/ui/button"

function Home() {
  return (
    <div className="flex flex-col items-center justify-center min-h-svh bg-gradient-to-b from-background to-muted p-4">
      <div className="text-center max-w-3xl mx-auto">
        <h1 className="text-4xl font-bold tracking-tight sm:text-5xl md:text-6xl mb-6">
          <span className="text-primary">Bookit</span> KE
        </h1>
        <p className="text-xl text-muted-foreground mb-8">
          The modern booking platform for local service providers in Kenya
        </p>

        <div className="flex flex-col sm:flex-row gap-4 justify-center mb-12">
          <Button size="lg" className="font-medium">
            Get Started
          </Button>
          <Button size="lg" variant="outline" className="font-medium">
            Learn More
          </Button>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-3 gap-6 text-center">
          <div className="p-6 rounded-lg border bg-card shadow-sm">
            <h3 className="font-medium text-lg mb-2">Easy Booking</h3>
            <p className="text-muted-foreground">Simple and intuitive booking experience for your customers</p>
          </div>
          <div className="p-6 rounded-lg border bg-card shadow-sm">
            <h3 className="font-medium text-lg mb-2">WhatsApp Notifications</h3>
            <p className="text-muted-foreground">Instant notifications for you and your customers</p>
          </div>
          <div className="p-6 rounded-lg border bg-card shadow-sm">
            <h3 className="font-medium text-lg mb-2">Mpesa Integration</h3>
            <p className="text-muted-foreground">Seamless payment collection via M-Pesa</p>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Home
