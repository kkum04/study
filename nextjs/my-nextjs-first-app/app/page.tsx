import {Metadata} from "next";
import React from "react";
import Link from "next/link";

export const metadata: Metadata = {
  title: 'Next.js'
}
export default function page() {
  return <div>
    <h1>Hello, Home page!</h1>
    <br/>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <Link href="/dashboard#scrollTarget">Goto Dashboard with scroll</Link>
    <br/>
    <Link href="/dashboard" scroll={false}>Goto Dashboard without scroll</Link>

    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
    <h1>Temp</h1>
  </div>
}

