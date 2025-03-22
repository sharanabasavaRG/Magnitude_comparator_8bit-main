### **8-Bit Magnitude Comparator using UVM & Physical Design**  

#### **Overview**  
This project implements an **8-bit magnitude comparator** using **Verilog and SystemVerilog with UVM** for verification. The UVM testbench was developed and executed in **EDA Playground**. The physical design flow was completed using open-source EDA tools, including **OpenROAD, Klayout, and Yosys**.  

---

### **Implementation Details**  

#### **1️⃣ 8-Bit Magnitude Comparator**  
- Designed in **Verilog** to compare two 8-bit binary numbers.  
- Outputs whether A is greater than, less than, or equal to B.  
- Implemented using **combinational logic** for fast comparisons.  
- Simulated and verified using **UVM (Universal Verification Methodology).**  

#### **2️⃣ Universal Verification Methodology (UVM)**  
- Developed a **UVM testbench** in **EDA Playground**.  
- Testbench includes **generator, driver, monitor, scoreboard, and agent**.  
- Simulation performed in **EDA Playground** to validate the comparator.  

#### **3️⃣ Physical Design**  
- **Logic synthesis** performed using **Yosys**.  
- **Floorplanning, placement, clock tree synthesis, and routing** done using **OpenROAD**.  
- **Final layout visualization** in **KLayout**.  
- Design constraints specified in **SDC (Synopsys Design Constraints)** format.  

---

### **Tools Used**  
| Tool          | Purpose |  
|--------------|---------|  
| **EDA Playground**  | Running UVM testbench simulations |  
| **OpenROAD**       | Complete physical design flow |  
| **Yosys**         | RTL synthesis |  
| **KLayout**       | Layout visualization |  

---
### **Project Result **  

1. **Physical Design in OpenROAD**  
   *(Screenshot of the comparator’s project in OpenROAD, showing floorplanning, placement, and routing.)*  
   
   ![image](https://github.com/Chetana-Shivaraja/Magnitude_comparator_8bit/blob/main/reports/final_all.webp.png))  


### **How to Run the Project**  

#### **Running the UVM Testbench**  
1. Open **[EDA Playground](https://edaplayground.com/x/nyv2)**.  
2. Upload the **UVM testbench files** from the `/UVM/` folder.  
3. Select **UVM simulator** and run the testbench.  

#### **Running the Physical Design Flow**  
1. Clone the repository:  
   ```bash
   git clone https://github.com/your-repo/8bit-Magnitude-Comparator.git
   cd 8bit-Magnitude-Comparator
   ```  
2. Run **Yosys** for synthesis:  
   ```bash
   yosys -s synth.ys
   ```  
3. OpenROAD for placement and routing:  
   ```bash
   openroad -gui
   source pd.tcl
   ```  
4. View the final design layout in **KLayout**:  
   ```bash
   klayout final.gds
   ```  

---

### **Future Enhancements**  
✅ Extend the comparator to support more bit-widths (16-bit, 32-bit).  
✅ Automate the UVM testing process further.  
✅ Optimize the physical design for better timing and power efficiency.  

---

### **Contributors**  
- **[Chetana](https://github.com/Chetana-Shivaraja)**

