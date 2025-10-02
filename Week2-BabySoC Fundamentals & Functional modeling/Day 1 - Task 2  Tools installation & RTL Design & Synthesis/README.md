### Objective:

Write Verilog modules for BabySoC components, compile them using Icarus Verilog, and verify functionality using simulation waveforms.

## Steps Followed

Sure! Here’s the English translation of your steps:

---

## 1️⃣ Icarus Verilog Install (iverilog)

**Download:**

* Link: [Icarus Verilog for Windows](https://bleyer.org/icarus/)
* Choose the **Windows installer (.exe)**.

**Install:**

* Run the installer → choose default location or any folder (e.g., `C:\iverilog`).

**Check installation:**

* Open PowerShell and type:

  ```powershell
  iverilog -v
  ```
* Version info should appear → this means the installation is correct.

---

## 2️⃣ GTKWave Install

**Download:**

* Link: [GTKWave for Windows](http://gtkwave.sourceforge.net/)
* Choose the Windows installer.

**Install:**

* Run the installer → select default folder (e.g., `C:\gtkwave`).

**Check installation:**

* In PowerShell, type:

  ```powershell
  gtkwave -h
  ```
* Help info should appear → this means the installation is correct.

---

## 3️⃣ Setup Environment (Optional but Helpful)

* If you don’t want to type the full path every time, you can **add the paths to environment variables**:

  1. Search for **“Environment Variables”** in Windows → open “Edit the system environment variables.”
  2. Add to **Path**:

     ```
     C:\iverilog\bin
     C:\gtkwave\bin
     ```
  3. Restart PowerShell → now you can run `iverilog` and `gtkwave` directly from any folder.

---

## 4️⃣ Compile & Simulate (Once Installed)

* Navigate to your project folder through your powershell

* Compile:

  ```powershell
  iverilog -o baby_soc_tb.vvp -s baby_soc_tb *.v
  ```

* Run simulation:

  ```powershell
  vvp baby_soc_tb.vvp
  ```

* Open waveform:

  ```powershell
  gtkwave "Output Waveforms.vcd"
  ```
